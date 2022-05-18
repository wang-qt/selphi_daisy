defmodule SelphiDaisy.Alert.Example01 do
  @moduledoc """
  默认`alert`样式.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Alert,
      height: "90px",
      title: "alert",
      direction: "vertical"

  alias   SelphiDaisy.Alert.{Icon,Action}
  def render(assigns) do
    ~F"""
    <Alert>
      Lorem ipsum dolor sit amet, consectetur adip!
    </Alert>
    """
  end

end