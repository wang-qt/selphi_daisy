defmodule SelphiDaisy.Alert.Example05 do
  @moduledoc """
   `alert-warning`样式.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Alert,
      height: "90px",
      title: "alert state: warning",
      direction: "vertical"

  alias   SelphiDaisy.Alert.{Icon,Action}
  def render(assigns) do
    ~F"""
    <Alert class="alert-warning">
      <Icon>
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="w-6 h-6 mx-2 stroke-current">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z"></path>
    </svg>
      </Icon>
      Lorem ipsum dolor sit amet, consectetur adip!
    </Alert>
    """
  end

end