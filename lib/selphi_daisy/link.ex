defmodule SelphiDaisy.Link do
  @moduledoc """
  Link adds the missing underline style to links.
  添加连接下划线，主要用于在文本内容区添加超链接。对Link、LiveRedirect、LivePatch组件的封装
  defined by https://daisyui.com/components/link/

  - link	`Component`	Adds underline to a text
  - link-primary	`Modifier`	Link with `primary` color
  - link-secondary	`Modifier`	Link with `secondary` color
  - link-accent	`Modifier`	Link with `accent` color
  - link-neutral	`Modifier`	Link with `neutral` color
  - link-hover	`Modifier`	Only show underline on hover

  对于 surface 要处理三种link 类型，Link、LiveRedirect、LivePatch。
  分别代表: 跳转到普通页面，跳转到liveview(不需要重新建立连接？？)，跳转到同一个liveview不同action
  主要区别：Link 有 method，id 属性，LiveRedirect、LivePatch有 replace 属性(修改浏览器历史)
  共同点：都有to class opts属性，label可选。
  对于 Breadcrumb，Link的 methord只可能是 get，LiveRedirect、LivePatch的 replace 默认false
  只需要考虑 `to class opts label `属性。class opts 对于Breadcrumb意义不大，当然也可以设置。

  ```
  <p>Tailwind CSS resets the style of links by default.
  <br>
  Add "link" class to make it look like a
  <a class="link">normal link</a> again.
  </p>
  ```
  """
  use Surface.Component

  alias Surface.Components.{Link, LiveRedirect, LivePatch}

  @color_values ~w(none neutral primary secondary accent   )

  # SelphiDaisy.Link 属性，主要设置 颜色、下划线、hover
  @doc "颜色"
  prop color, :string, default: "none", values: @color_values

  @doc "hover  <Link  hover />"
  prop hover, :boolean


  @doc "link类型，默认 link"
  prop link_type, :string, default: "link", values: ~w(link live_redirect live_patch)

    # Link LiveRedirect、LivePatch 公共属性
  @doc "link文本"
  prop label, :string

  @doc "Url to render, optional and should not be supplied on last item to grey out"
  prop to, :string

  @doc "Css classes to propagate down to <a>"
  prop class, :css_class, default: []

  @doc """
  Add arbitrary attrs eg. opts={ tabindex: "0", data: [confirm: "Are you confirm?"] }
  """
  prop opts, :keyword, default: []

  # Link 属性
  @doc "Link属性：The method to use with the link"
  prop method, :atom, default: :get

  @doc "Link属性：Id to apply to the link"
  prop id, :string

  @doc "Link属性：List values that will be sent as part of the payload triggered by an event"
  prop values, :keyword, default: []

  # live_redirect live_patch 属性
  @doc "LiveRedirect, LivePatch属性：The flag to replace the current history or push a new state"
  prop replace, :boolean, default: false


  @doc """
  The content of the generated `<a>` element. If no content is provided.
  """
  slot default


  # 如果 to 没有设置
  def render(assigns = %{to: nil}) do
    ~F"""
    <a
        class={ [
                 "link",
                 "link-hover": @hover
                ] ++ color_class(assigns) ++  @class }
       {...@opts}
    >
        <#slot> {@label} </#slot>
    </a>
    """
  end


  def render(assigns = %{link_type: link_type}) when  link_type == "link" do
    ~F"""
    <Link
        label={@label}
        to={@to}
        class={ [
                 "link",
                 "link-hover": @hover
                ] ++ color_class(assigns) ++  @class}
        opts={@opts}
        method={@method}
        id={@id}
        values={@values}
    >
        <#slot> {@label} </#slot>
    </Link>
    """
  end

  def render(assigns = %{link_type: link_type}) when  link_type == "live_redirect" do
    ~F"""
    <LiveRedirect
        label={@label}
        to={@to}
        class={ [
                 "link",
                 "link-hover": @hover
                ] ++ color_class(assigns) ++  @class}
        opts={@opts}
        replace={@replace}
    >
        <#slot> {@label} </#slot>
    </LiveRedirect>
    """
  end

  def render(assigns = %{to: to, link_type: link_type}) when  link_type == "live_patch" do
    ~F"""
    <LivePatch
        label={@label}
        to={@to}
        class={ [
                 "link",
                 "link-hover": @hover
                ] ++ color_class(assigns) ++  @class}
        opts={@opts}
        replace={@replace}
    >
        <#slot> {@label} </#slot>
    </LivePatch>
    """
  end


  defp color_class(assigns = %{color: color}) do
    case color do
      "none" -> []
      "primary" -> ["link-primary"]
      "secondary" -> ["link-secondary"]
      "accent" -> ["link-accent"]
      "neutral" -> ["link-neutral"]
      _ -> []
    end
  end


end