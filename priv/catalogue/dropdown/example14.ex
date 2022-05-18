defmodule SelphiDaisy.Dropdown.Example14 do
  @moduledoc """
  `Dropdown` 提示信息card
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Dropdown,
      height: "600px",
      title: " Helper dropdown",
      direction: "vertical"

  alias   SelphiDaisy.Dropdown.{MenuHolder,Label}
  alias   SelphiDaisy.Card
  alias   SelphiDaisy.Card.{Body,Figure}
  alias   SelphiDaisy.Card.Body.{Title,Text,Action}

  alias   SelphiDaisy.Heroicons

  def render(assigns) do
    ~F"""
    <div class=" h-1/3 flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-start justify-center gap-2 overflow-x-hidden">
     A normal text and a helper dropdown
    <Dropdown pop_pos="end" >
      <Label class="btn-circle btn-ghost btn-xs text-info-content">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="w-4 h-4 stroke-current"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>
      </Label>
      {!-- 手动添加 dropdown-content --}
      <Card color="primary" class="dropdown-content w-80" opts={tabindex: "0"}>
        <Body>
          <Title title="Card title!" />
          <Text>
            you can use any element as a dropdown.
          </Text>
        </Body>
      </Card>
    </Dropdown>
    </div>

    <div class=" h-1/3 flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-start justify-center gap-2 overflow-x-hidden">
    A normal text and a helper dropdown
    <Dropdown  pop_pos="end" >
      <Label class="btn-circle btn-ghost btn-xs text-info-content">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="w-4 h-4 stroke-current"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>
      </Label>
      {!-- 手动添加 dropdown-content --}
      <Card color="secondary" class="dropdown-content w-80" opts={tabindex: "0"}>
        <Body>
          <Title title="Card title!" />
          <Text>
            you can use any element as a dropdown.
          </Text>
        </Body>
      </Card>
    </Dropdown>
    </div>

    <div class=" h-1/3 flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-start justify-center gap-2 overflow-x-hidden">
    A normal text and a helper dropdown
    <Dropdown pop_pos="end" >
      <Label class="btn-circle btn-ghost btn-xs text-info-content">
        <Heroicons name="question-mark-circle" size="4"   />
      </Label>
      {!-- 手动添加 dropdown-content --}
      <Card  color="neutral" class="dropdown-content w-80" opts={tabindex: "0"}>
        <Body>
          <Title title="Card title!" />
          <Text>
            you can use any element as a dropdown.
          </Text>
        </Body>
      </Card>
    </Dropdown>
    </div>

    """
  end
end