defmodule SelphiDaisy.Form do
  @moduledoc """
  The form component that wraps the inputs.
  这个组件没有用, 等同于 Surface.Components.Form，实际应用中请使用 Surface.Components.Form。
  """

  use SelphiDaisy.Component
  alias Surface.Components.Form

  include(Form)

  slot default, args: [:form]

  def render(assigns) do
    ~F"""
    <Form {...included_props(assigns)} :let={form: form} >
      <Context put={__MODULE__, form: form}>
        <#slot :args={form: form} />
      </Context>
    </Form>
    """
  end

end