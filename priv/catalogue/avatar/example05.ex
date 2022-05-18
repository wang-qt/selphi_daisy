defmodule SelphiDaisy.Avatar.Example05 do
  @moduledoc """
  avatar ring
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Avatar,
      height: "160px",
      title: "Avatar with ring",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <div class="flex justify-center items-center gap-4" >
    <Avatar size="24" has_ring="true" >
      <img src="https://api.lorem.space/image/face?hash=3174">
    </Avatar>
    <Avatar size="24" has_ring="true" ring_class="ring ring-secondary ring-offset-base-100 ring-offset-4">
      <img src="https://api.lorem.space/image/face?hash=3174">
    </Avatar>
    </div>
    """
  end

end