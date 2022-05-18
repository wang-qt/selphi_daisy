defmodule SelphiDaisy.Swap.Example02 do
  @moduledoc """
  Swap 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Swap,
      height: "150px",
      title: " Swap volume icons",
      direction: "vertical"

   alias SelphiDaisy.Heroicons

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <Swap id="swap-1">
        <Heroicons name="eye" type="fill" class="swap-on"/>
        <Heroicons name="eye-off" type="fill" class="swap-off" />
      </Swap>
      <Swap id="swap-2">
        <Heroicons name="volume-up" type="fill" class="swap-on"/>
        <Heroicons name="volume-off" type="fill" class="swap-off" />
      </Swap>
      <Swap id="swap-3">
        <Heroicons name="plus" type="fill" class="swap-on"/>
        <Heroicons name="minus" type="fill" class="swap-off" />
      </Swap>
      <Swap id="swap-4">
        <Heroicons name="emoji-happy" type="fill" class="swap-on"/>
        <Heroicons name="emoji-sad" type="fill" class="swap-off" />
      </Swap>
      <Swap id="swap-5">
        <Heroicons name="status-online" type="fill" class="swap-on"/>
        <Heroicons name="status-offline" type="fill" class="swap-off" />
      </Swap>
      <Swap id="swap-6">
        <Heroicons name="view-grid" type="fill" class="swap-on"/>
        <Heroicons name="view-list" type="fill" class="swap-off" />
      </Swap>
      <Swap id="swap-7">
        <Heroicons name="lock-open" type="fill" class="swap-on"/>
        <Heroicons name="lock-closed" type="fill" class="swap-off" />
      </Swap>
      <Swap id="swap-8">
        <Heroicons name="sun" type="fill" class="swap-on"/>
        <Heroicons name="moon" type="fill" class="swap-off" />
      </Swap>
      <Swap id="swap-9">
        <Heroicons name="thumb-up"  class="swap-on"/>
        <Heroicons name="thumb-down"  class="swap-off" />
      </Swap>
      <Swap id="swap-10">
        <Heroicons name="zoom-in"  class="swap-on"/>
        <Heroicons name="zoom-out"  class="swap-off" />
      </Swap>
      <Swap id="swap-11">
        <Heroicons name="plus-circle"  class="swap-on"/>
        <Heroicons name="minus-circle"  class="swap-off" />
      </Swap>
    </div>
    """
  end

end