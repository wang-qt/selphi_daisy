defmodule SelphiDaisy.Component do
  @moduledoc """
  Form 组件辅助类，简化开发。提供 include 宏，拷贝其他组件的prop。
  使用方式类似于 Elixir's `import` using `only: [list_of_names]` and `except: [list_of_names]`.
  eg. include(Surface.Components.Form), 拷贝Surface.Components.Form的所有prop, event。
  所有form组件都是 无状态组件。
  """

  defmacro __using__(_) do
    quote do
      use Surface.Component
      import SelphiDaisy.Gettext
      import SelphiDaisy.Component, only: [include: 1, include: 2]
    end
  end

  @doc """
  Allows a component to include props from another component.
  Props can be selectively included similarly to Elixir's `import` using `only: [list_of_names]` and `except: [list_of_names]`.
  并本地定义included_props 方法，方便传递属性到内部组件
  """
  defmacro include(other_component, opts \\ []) do
    only = Keyword.get(opts, :only)
    except = Keyword.get(opts, :except)

    if is_list(only) and is_list(except) do
      raise "Cannot use only and except together."
    end

    filter =
      cond do
        is_list(only) ->
          quote do
            fn props -> Enum.filter(props, &(&1.name in unquote(only))) end
          end

        is_list(except) ->
          quote do
            fn props -> Enum.reject(props, &(&1.name in unquote(except))) end
          end

        true ->
          quote do
            fn props -> props end
          end
      end

    quote do
      for included_prop <-
            unquote(other_component).__props__()
            |> unquote(filter).() do
        Module.put_attribute(__MODULE__, :prop, included_prop)
        Module.put_attribute(__MODULE__, :assigns, included_prop)
      end

      # 把组件的所有属性转成成 map，key为prop名，value为prop的值。
      # 方便传递属性到内部组件
      @doc """
      把include组件的所有属性转成成 map，key为prop名，value为prop的值。
      方便传递属性到内部组件
      """
      def included_props(assigns) do
        Enum.reduce(unquote(other_component).__props__(), %{}, fn %{name: name}, acc ->
          if Map.get(assigns, name) do
            Map.put(acc, name, assigns[name])
          else
            acc
          end
        end)
      end

      @doc """
      合并组件传入的class和组件计算的class，
      class_list： list
      """
      def merge_classes(assigns, class_list) do
        if Map.get(assigns, :class) do
          Map.put(assigns, :class, class_list ++ assigns[:class]  )
        else
          Map.put(assigns, :class, class_list )
        end
      end

    end
  end

end