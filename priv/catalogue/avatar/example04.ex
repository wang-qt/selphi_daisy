defmodule SelphiDaisy.Avatar.Example04 do
  @moduledoc """
  avatar mask
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Avatar,
      height: "160px",
      title: "Avatar with mask",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <div class="flex justify-center items-center gap-4" >
    <Avatar size="24" mask="squircle" >
      <img src="https://api.lorem.space/image/face?hash=47449">
    </Avatar>
    <Avatar size="24" mask="heart">
      <img src="https://api.lorem.space/image/face?hash=55350">
    </Avatar>
    <Avatar size="24" mask="hexagon">
      <img src="https://api.lorem.space/image/face?hash=60857">
    </Avatar>
    <Avatar size="24" mask="decagon" >
      <img src="https://api.lorem.space/image/face?hash=47449">
    </Avatar>
    <Avatar size="24" mask="pentagon">
      <img src="https://api.lorem.space/image/face?hash=55350">
    </Avatar>
    <Avatar size="24" mask="diamond">
      <img src="https://api.lorem.space/image/face?hash=60857">
    </Avatar>
    <Avatar size="24" mask="star" >
      <img src="https://api.lorem.space/image/face?hash=47449">
    </Avatar>
    <Avatar size="24" mask="triangle">
      <img src="https://api.lorem.space/image/face?hash=55350">
    </Avatar>
    <Avatar size="24" mask="half-1">
      <img src="https://api.lorem.space/image/face?hash=60857">
    </Avatar>
    </div>
    """
  end

end