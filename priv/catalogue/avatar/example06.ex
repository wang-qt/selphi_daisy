defmodule SelphiDaisy.Avatar.Example06 do
  @moduledoc """
  avatar online 和 offline
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Avatar,
      height: "160px",
      title: "Avatar with presense indicator",
      direction: "vertical"



  def render(assigns) do
    ~F"""
    <div class="flex justify-center items-center gap-4" >
    <Avatar size="24"  >
      <img src="https://api.lorem.space/image/face?hash=28212">
    </Avatar>
    <Avatar size="24" indicator="none" >
      <img src="https://api.lorem.space/image/face?hash=28212">
    </Avatar>
    <Avatar size="24" indicator="online" >
      <img src="https://api.lorem.space/image/face?hash=28212">
    </Avatar>
    <Avatar size="24" indicator="offline">
      <img src="https://api.lorem.space/image/face?hash=40361">
    </Avatar>
    </div>
    """
  end

end