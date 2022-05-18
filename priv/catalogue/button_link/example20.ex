defmodule SelphiDaisy.ButtonLink.Example20 do
  @moduledoc """
  Link 使用 link_type to method id 属性. 非get方法，自动添加 csrf_token
  ~w(link live_redirect live_patch)
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ButtonLink,
      height: "150px",
      title: "live_redirect 类型"


  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 ">
      <ButtonLink
          link_type="live_redirect"
          to="#/users"
          label="live redirect"
          opts={ tabindex: "0", data: [confirm: "Are you forward?"] } >
         redirect to another liveview
      </ButtonLink> <br>

      <ButtonLink

             link_type="live_redirect"
             to="#/users"
             label="create a new user"
             replace
             opts={ tabindex: "0"}
             loading
             loading_text="redirecting..."
             outline
             color="primary" >
         redirect and params
      </ButtonLink> <br>
    </div>
    """
  end
end
