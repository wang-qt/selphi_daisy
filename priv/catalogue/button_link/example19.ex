defmodule SelphiDaisy.ButtonLink.Example19 do
  @moduledoc """
  Link 使用 link_type to method id 属性. 非get方法，自动添加 csrf_token
  ~w(link live_redirect live_patch)
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ButtonLink,
      height: "150px",
      title: "ButtonLink 类型"


  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 ">
      <ButtonLink
          to="#/user/1"
          method={:delete}
          id="user1"
          values={id: 1}
          opts={ tabindex: "0", data: [confirm: "Are you delete?"] } >
         I'm a simple delete link
      </ButtonLink> <br>

      <ButtonLink  link_type="link"
             id="user2"
             to="#/users"
             method={:post}
             label="create a new user"
             values={name: "wang",sex: "male"}
             opts={ tabindex: "0"}
             color="primary" >
        I'm a simple post link
      </ButtonLink> <br>
      <ButtonLink  link_type="link"
             id="user2"
             to="#/users"
             method={:put}
             label="modify a  user info"
             values={name: "wang",sex: "male"}
             opts={ tabindex: "0", data: [confirm: "Are you modify?"] }
             color="primary" ></ButtonLink>
    </div>
    """
  end
end
