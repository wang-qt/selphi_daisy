defmodule SelphiDaisy.Form.RightAddon do
  use Surface.Component, slot: "right_addon"

  slot default

  slot controls

  def render(assigns) do
    ~F"""
    {!-- <Context  get={SelphiDaisy.Form, is_addon: is_addon}> --}

    {#if slot_assigned?(:controls) }
      {#for {_, index} <- Enum.with_index(@controls)}
      <div class="control">
        <#slot name="controls"  index={index}/>
      </div>
      {/for}
    {#else}
      <div class="control">
         <#slot />
      </div>
    {/if}

    {!-- </Context> --}
    """
  end
end