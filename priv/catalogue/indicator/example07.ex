defmodule SelphiDaisy.Indicator.Example07 do
  @moduledoc """
  Indicator 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Indicator,
      height: "300px",
      title: "A button as an indicator for a card",
      direction: "vertical"

  alias SelphiDaisy.Avatar

  def render(assigns) do
    ~F"""
     {!-- 父组件添加 indicator 类 --}
    <div class="flex items-center justify-center gap-4">
      <div class="indicator">
        <Indicator is_button v_pos="bottom">
          <button class="btn btn-outline btn-primary">Apply</button>
        </Indicator>
        <div class="border card">
          <div class="card-body">
            <h2 class="card-title">Job Title</h2>
            <p>Rerum reiciendis beatae tenetur excepturi</p>
          </div>
        </div>
      </div>
    </div>
    """
  end

end