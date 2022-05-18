defmodule SelphiDaisy.Form.RadioButton do
  @moduledoc """
  The radio button component as defined in https://bulma.io/documentation/form/radio/
  """
  use SelphiDaisy.Component
  alias Surface.Components.Form.{Field, RadioButton}

  # mobile按钮大小，不设置默认为 md
  @size_values  ~w(lg md  sm  xs  )

  # 颜色
  @color_values  ~w(neutral primary  secondary accent )

  @doc "The the field on the changeset"
  prop field, :atom, required: true

  @doc "The the field on the changeset"
  prop color, :string, default: "neutral", values: @color_values

  @doc """
  设置 RadioButton 大小
  """
  prop size, :string, values: @size_values

  @doc "Any opts you want to pass on to internal `Surface.RadioButton` and `Phoenix.HTML.Form.radio_button/3`"
  prop opts, :keyword, default: []

  @doc "Class to apply to input"
  prop class, :css_class, default: []


  @doc """
  `options` are expected to be an enumerable which will be used to
  generate each respective `RadioButton`. The enumerable may have:
    * keyword lists - each keyword list is expected to have the keys
      `:key` and `:value`. Additional keys such as `:disabled` may
      be given to customize the option
    * two-item tuples - where the first element is an atom, string or
      integer to be used as the option label and the second element is
      an atom, string or integer to be used as the option value
    * atom, string or integer - which will be used as both label and value
      for the generated select
  ## example
     <RadioButton   field={:radio}   options={["yes", "no"]} />
      <RadioButton   field={:radio}   options={[{1, "yes"}, {2, "no"}]} />
      <RadioButton   field={:radio1}
          options={[
            [key: 1, value: "one", checked: true],
            [key: 2, value: "two"],
            [key: 3, value: "three"],
            [key: 4, value: "four", disabled: true]
          ]} />
  """
  prop options, :list


  slot default

  def render(assigns) do
    ~F"""
    <Context get={SelphiDaisy.Form.HGroup, is_horizontal: is_horizontal, size: hg_size }>
      <Field class="field" name={@field}>
        <div class="control flex flex-col sm:flex-row">
          {#for entry <- @options}
            <label class="flex select-none items-center justify-start m-2">
              <RadioButton
                field={@field}
                opts={[disabled: get_disabled(entry)] ++ @opts }
                class={["radio"] ++ color_class(assigns) ++ size_class(assigns,hg_size) ++ @class}
                value={get_key(entry)}
                checked={get_checked(entry)}

                />
              <span class="ml-2"> {get_value(entry)} </span>
            </label>
          {/for}
        </div>
      </Field>
    </Context>
    """
  end

  # radio 组件 value
  defp get_key({key, _value}), do: key
  defp get_key(list) when is_list(list), do: Keyword.get(list, :key)
  defp get_key(key), do: key

  defp get_disabled(list) when is_list(list), do: Keyword.get(list, :disabled, false)
  defp get_disabled(_), do: false

  defp get_checked(list) when is_list(list), do: Keyword.get(list, :checked, false)
  defp get_checked(_), do: false

  # radio 组件 label
  defp get_value({_key, value}), do: value
  defp get_value(list) when is_list(list), do: Keyword.get(list, :value)
  defp get_value(value), do: value

  defp color_class(assigns = %{color: color}) do
    case color do
      "primary" -> ["radio-primary"]
      "secondary" -> ["radio-secondary"]
      "accent" -> ["radio-accent"]
      _ -> []
    end
  end

  # hg_size 优先级高于组件的size
  defp size_class(_assigns, hg_size)  when is_binary(hg_size) do
    case hg_size do
      "xs" -> ["radio-xs"]
      "sm" -> ["radio-sm"]
      "md" -> ["radio-md"]
      "lg" -> ["radio-lg"]
      _ -> []
    end
  end
  defp size_class(assigns = %{size: size}, _hg_size) do
    case size do
      "xs" -> ["radio-xs"]
      "sm" -> ["radio-sm"]
      "md" -> ["radio-md"]
      "lg" -> ["radio-lg"]
      _ -> []
    end
  end
  defp size_class(assigns, hg_size) do
    []
  end

end