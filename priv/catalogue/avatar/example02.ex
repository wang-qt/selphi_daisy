defmodule SelphiDaisy.Avatar.Example02 do
  @moduledoc """
  avatar 自定义大小
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Avatar,
      height: "160px",
      title: "Avatar in custom sizes",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <div class="flex justify-center items-center gap-4" >
    <Avatar size="32" >
      <img src="https://api.lorem.space/image/face?hash=88560">
    </Avatar>
    <Avatar size="20" >
      <img src="https://api.lorem.space/image/face?hash=80245" alt="Tailwind-CSS-Avatar-component">
    </Avatar>
    <Avatar size="16" >
      <img src="https://api.lorem.space/image/face?hash=77703" alt="Tailwind-CSS-Avatar-component">
    </Avatar>
    <Avatar size="8" >
      <img src="https://api.lorem.space/image/face?hash=33791" alt="Tailwind-CSS-Avatar-component">
    </Avatar>

    </div>
    """
  end

end