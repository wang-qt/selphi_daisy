defmodule SelphiDaisy.Avatar.Example07 do
  @moduledoc """
  avatar online 和 offline
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Avatar,
      height: "160px",
      title: "Avatar with presense indicator",
      direction: "vertical"

  alias  SelphiDaisy.Avatar.Placeholder

  def render(assigns) do
    ~F"""
    <div class="flex justify-center items-center gap-4" >
      <Placeholder  label="KO" />
      <Placeholder  label="KO" size="32"/>
      <Placeholder  label="KO" size="24"/>
      <Placeholder  label="KO" size="20" indicator="online"/>
      <Placeholder  label="KO" size="16" indicator="offline"/>
      <Placeholder  label="KO" size="14" />
      <Placeholder  label="KO" />
      <Placeholder  label="KO" size="10"/>
      <Placeholder  label="KO" size="8"/>
    </div>
    """
  end

end