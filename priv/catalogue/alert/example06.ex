defmodule SelphiDaisy.Example06 do
  @moduledoc """
   `alert-error`样式.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Alert,
      height: "90px",
      title: "alert state: error",
      direction: "vertical"

  alias   SelphiDaisy.Alert.{Icon,Action}
  def render(assigns) do
    ~F"""
    <Alert class="alert-error">
      <Icon>
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="w-6 h-6 mx-2 stroke-current">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M18.364 18.364A9 9 0 005.636 5.636m12.728 12.728A9 9 0 015.636 5.636m12.728 12.728L5.636 5.636"></path>
    </svg>
      </Icon>
      Lorem ipsum dolor sit amet, consectetur adip!
    </Alert>
    """
  end

end