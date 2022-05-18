defmodule SelphiDaisy.Avatar.Example03 do
  @moduledoc """
  avatar 圆角大小
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Avatar,
      height: "160px",
      title: "Avatar rounded",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <div class="flex justify-center items-center gap-4" >
    <Avatar size="24"  >
      <img src="https://api.lorem.space/image/face?hash=88560">
    </Avatar>
    <Avatar size="24" round="rounded-xl">
      <img src="https://api.lorem.space/image/face?hash=64318">
    </Avatar>
    <Avatar size="24" round="rounded-full">
      <img src="https://api.lorem.space/image/face?hash=92310">
    </Avatar>
    </div>
    """
  end

end