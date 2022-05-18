defmodule SelphiDaisy.Alert.Example03 do
  @moduledoc """
   `alert-info`样式.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Alert,
      height: "90px",
      title: "alert state: info",
      direction: "vertical"

  alias   SelphiDaisy.Alert.{Icon,Action}
  def render(assigns) do
    ~F"""
    <Alert class="alert-info">
      <Icon>
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="w-6 h-6 mx-2 stroke-current">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
    </svg>
      </Icon>
      Lorem ipsum dolor sit amet, consectetur adip!
    </Alert>
    """
  end

end