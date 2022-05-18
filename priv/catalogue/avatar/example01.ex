defmodule SelphiDaisy.Avatar.Example01 do
  @moduledoc """
  使用 Avatar, Avatar.PlaceHolder, Avatar.Group 组件.
  Avatar默认样式
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Avatar,
      height: "90px",
      title: "avatar",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <div class="flex justify-center" >
    <Avatar>
      <img src="https://api.lorem.space/image/face?hash=92048">
    </Avatar>
    </div>
    """
  end

end