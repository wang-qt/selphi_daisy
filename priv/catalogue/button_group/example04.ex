defmodule SelphiDaisy.ButtonGroup.Example04 do
  @moduledoc """
  ButtonGroup中组件使用`radio`.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ButtonGroup,
      height: "500px",
      title: "button group with radio buttons"

  alias SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <ButtonGroup class="my-2">
    <input type="radio" name="options" id="option-first" data-title="<<" class="btn">
    <input type="radio" name="options" id="option1" data-title="1" class="btn">
    <input type="radio" name="options" id="option2" data-title="2" checked="checked" class="btn">
    <input type="radio" name="options" id="option3" data-title="3" class="btn">
    <input type="radio" name="options" id="option-dot" data-title="..." class="btn">
    <input type="radio" name="options" id="option4" data-title="4" class="btn">
    <input type="radio" name="options" id="option5" data-title="5" class="btn">
    <input type="radio" name="options" id="option6" data-title="6" class="btn">
    <input type="radio" name="options" id="option-last" data-title=">>" class="btn">
    </ButtonGroup>

    <ButtonGroup class="my-2">
    <input type="radio" name="options1" id="option11" data-title="1" class="btn btn-outline">
    <input type="radio" name="options1" id="option12" data-title="2" checked="checked" class="btn btn-outline">
    <input type="radio" name="options1" id="option13" data-title="3" class="btn btn-outline">
    <input type="radio" name="options1" id="option14" data-title="4" class="btn btn-outline">
    <input type="radio" name="options1" id="option15" data-title="5" class="btn btn-outline">
    </ButtonGroup>
    """
  end

end