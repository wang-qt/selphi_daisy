defmodule SelphiDaisy.Link.Example05 do
  @moduledoc """
  Link 使用 link_type to method id 属性. 非get方法，自动添加 csrf_token
  ~w(link live_redirect live_patch)
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Link,
      height: "150px",
      title: "Link 类型"


  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 ">
      <Link
          to="#/user/1"
          method={:delete}
          id="user1"
          values={id: 1}
          opts={ tabindex: "0", data: [confirm: "Are you delete?"] } >
         I'm a simple delete link
      </Link> <br>

      <Link  link_type="link"
             id="user2"
             to="#/users"
             method={:post}
             label="create a new user"
             values={name: "wang",sex: "male"}
             opts={ tabindex: "0"}
             color="primary" >
        I'm a simple post link
      </Link> <br>
      <Link  link_type="link"
             id="user2"
             to="#/users"
             method={:put}
             label="modify a  user info"
             values={name: "wang",sex: "male"}
             opts={ tabindex: "0", data: [confirm: "Are you modify?"] }
             color="primary" ></Link>
    </div>
    """
  end
end
