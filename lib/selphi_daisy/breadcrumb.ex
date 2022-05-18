defmodule SelphiDaisy.Breadcrumb do
  @moduledoc """
  Can take a list of breadcrumb maps with keys `to`, `label` and `active`
  or a slot list of `Breadcrumb.Item`.
  defined by https://daisyui.com/components/breadcrumbs

  对于 surface 要处理三种link 类型，Link、LiveRedirect、LivePatch。
  分别代表: 跳转到普通页面，跳转到liveview(不需要重新建立连接？？)，跳转到同一个liveview不同action
  主要区别：Link 有 method，id 属性，LiveRedirect、LivePatch有replace属性(修改浏览器历史)
  共同点：都有to class opts属性，label可选。
  对于 Breadcrumb，Link的 methord只可能是 get，LiveRedirect、LivePatch的 replace 默认false
  只需要考虑 `to class opts label `属性。class opts 对于Breadcrumb意义不大，当然也可以设置。

  设计了两种使用方式。
  1. 给 breadcrumbs 设置输入列表，每项为map <Breadcrumb breadcrumbs={@list} />
    ```
    breadcrumbs = [
    %{ link_type: "link", to: "", label: "home"},
    %{ link_type: "live_redirect", to: "#users", label: "users"},
    %{ link_type: "live_patch", to: "#users/1234/show", label: "show"}
    %{ label: "John Doe"}
  ]
  ```
  2. 使用 Breadcrumb.Item
  ```
    <Breadcrumb>
      <Item link_type="link"  to="" class=""  opts={data: [], tabindex: "0" } label="home"></Item>
      <Item link_type="live_redirect" to="" class=""  opts={data: [], tabindex: "0" } label="users"></Item>
      <Item link_type="live_patch" to="" class=""  opts={data: [], tabindex: "0" } label="show"></Item>
      <Item >Jhon Smith</Item>
    </Breadcrumb>
  ```
  """
  use Surface.Component

  alias Surface.Components.{Link, LiveRedirect, LivePatch}

  @doc "Css classes set to div/nav,eg. text-sm "
  prop class, :css_class, default: []

  @doc """
  手动输入breadcrumb参数列表，breadcrumb存在则忽略slot. eg.
  link_type: ~w(link live_redirect live_patch)
  to 和 link_type : 最后一项一般不填，
  """
  prop breadcrumbs, :list, default: []


  @doc "The Breadcrumb items to display"
  slot items

  def render(assigns = %{breadcrumbs: [_ | _]}) do
    ~F"""
    <nav class={["breadcrumbs"] ++ @class}>
      <ul >
        {#for item <- @breadcrumbs}
          <li  >
          {#if !is_nil(item[:to]) && item[:link_type] == "link"  }
          <Link to={item.to}>{item.label}</Link>
          {/if}

          {#if !is_nil(item[:to]) && item[:link_type] == "live_redirect"  }
          <LiveRedirect to={item.to}>{item.label}</LiveRedirect>
          {/if}

          {#if !is_nil(item[:to]) && item[:link_type] == "live_patch"  }
          <LivePatch to={item.to}>{item.label}</LivePatch>
          {/if}

          {#if is_nil(item[:to])}
          {item.label}
          {/if}

          </li>
        {/for}
      </ul>
    </nav>
    """
  end


 def render(assigns) do
    ~F"""
    <nav class={["breadcrumbs"] ++ @class}">
      <ul >
           {#for {_, index} <- Enum.with_index(@items)}
              <#slot name="items" index={index} />
            {/for}
      </ul>
    </nav>
    """
  end


end