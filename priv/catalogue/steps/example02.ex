defmodule SelphiDaisy.Steps.Example02 do
  @moduledoc """
  Steps 组件.

   items = [
      %{ ready: true,  label: "Register",  data_content: "?" },
      %{ ready: true, label: "Choose plan", data_content: "!"},
      %{ ready: false ,label: "Purchase"},
      %{ ready: false, label: "Receive Product"}
    ]
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Steps,
      height: "150px",
      title: " Steps  使用 data (list map)",
      direction: "vertical"

  alias   SelphiDaisy.Steps.Step

  def render(assigns) do
    items = [
      %{ ready: true,  label: "Register",  data_content: "?" },
      %{ ready: true, label: "Choose plan", data_content: "!"},
      %{ ready: false ,label: "Purchase"},
      %{ ready: false, label: "Receive Product"}
    ]
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <Steps data={items}> </Steps>
    </div>
    """
  end

end