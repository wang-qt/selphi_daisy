defmodule SelphiDaisy do
  @moduledoc """
  组件库，使用surface 实现 daisyui css框架。
  Mask 模块，使用 macro 来简化组件使用
  """
  defmodule Mask do
    @moduledoc false
    defmacro __using__(component_doc_name) do
      component_doc_name =
        if component_doc_name != [] do
          component_doc_name
        else
          Module.split(__CALLER__.module) |> List.last() |> String.downcase()
        end

      quote do
        @doc """
        The mask of the #{unquote(component_doc_name)}.
        mask 样式，详见 mask 文档 https://daisyui.com/components/mask/
        """
        prop mask, :string, default: "none",
                            values: ~w(none squircle heart hexagon hexagon-2  decagon pentagon diamond square circle parallelogram parallelogram-2 parallelogram-3 parallelogram-4  star star-2 triangle triangle-2 triangle-3 triangle-4 half-1 half-2)

        @doc "生产mask类"
        defp mask_class(assigns = %{mask: mask})  do
          case mask do
            "squircle" -> ["mask","mask-squircle"]
            "heart" -> ["mask","mask-heart"]
            "hexagon" -> ["mask","mask-hexagon"]
            "hexagon-2" -> ["mask","mask-hexagon-2"]
            "decagon" -> ["mask","mask-decagon"]
            "pentagon" -> ["mask","mask-pentagon"]
            "diamond" -> ["mask","mask-diamond"]
            "square" -> ["mask","mask-square"]
            "circle" -> ["mask","mask-circle"]
            "parallelogram" -> ["mask","mask-parallelogram"]
            "parallelogram-2" -> ["mask","mask-parallelogram-2"]
            "parallelogram-3" -> ["mask","mask-parallelogram-3"]
            "parallelogram-4" -> ["mask","mask-parallelogram-4"]
            "star" -> ["mask","mask-star"]
            "star-2" -> ["mask","mask-star-2"]
            "triangle" -> ["mask","mask-triangle"]
            "triangle-2" -> ["mask","mask-triangle-2"]
            "triangle-3" -> ["mask","mask-triangle-3"]
            "triangle-4" -> ["mask","mask-triangle-4"]
            "half-1" -> ["mask","mask-half-1"]
            "half-2" -> ["mask","mask-half-2"]
            _ -> []
          end
        end

      end
    end
  end
end
