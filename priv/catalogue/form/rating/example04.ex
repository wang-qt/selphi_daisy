defmodule SelphiDaisy.Form.Rating.Example04 do
  @moduledoc """
  Rating  。
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.Rating,
      height: "300px",
      title: "Rating 组件 位于水平组件中 HGroup  ",
      direction: "vertical"

  alias SelphiDaisy.Form.SampleModel
  alias Surface.Components.Form  # 直接使用底层 Form!!
  alias SelphiDaisy.Form.HGroup

  data changeset, :map,
       default:
         SampleModel.changeset(%SampleModel{}, %{
           "username" => "bulma",
           "email" => "hello@"
         })
         |> Map.put(:action, :insert)

  def render(assigns) do
    ~F"""
    <div class="border-base-300  border flex  min-h-[6rem] min-w-[18rem] max-w-4xl items-center justify-center m-4  ">
    <Form
      for={@changeset}
      change={"change"}
      submit={"submit"}
      opts={autocomplete: "off"}
      class="w-full">

      <HGroup caption="评分"  >
        <Rating   field={:rating}  mask="mask-heart" bg_color="bg-red-400"
             half
          options={[
            [value: 1, color: "bg-red-400"],
            [value: 2, color: "bg-orange-400", checked: true],
            [value: 3, color: "bg-yellow-400" ],
            [value: 4, color: "bg-lime-400" ],
            [value: 5, color: "bg-green-400" ]
          ]} />
      </HGroup>
      <HGroup caption="评分" size="xs" >
        <Rating   field={:rating1}  mask="mask-heart" bg_color="bg-green-400"
             half
          options={[
            [value: 1, color: "bg-red-400"],
            [value: 2, color: "bg-orange-400", checked: true],
            [value: 3, color: "bg-yellow-400" ],
            [value: 4, color: "bg-lime-400" ],
            [value: 5, color: "bg-green-400" ]
          ]} />
      </HGroup>
      <HGroup caption="评分" size="sm" >
        <Rating   field={:rating2}  mask="mask-heart" bg_color="bg-green-400"
             half
          options={[
            [value: 1, color: "bg-red-400"],
            [value: 2, color: "bg-orange-400", checked: true],
            [value: 3, color: "bg-yellow-400" ],
            [value: 4, color: "bg-lime-400" ],
            [value: 5, color: "bg-green-400" ]
          ]} />
      </HGroup>
      <HGroup caption="评分" size="md" >
        <Rating   field={:rating3}  mask="mask-star-2" bg_color="bg-green-400"
             half
          options={[
            [value: 1, color: "bg-red-400"],
            [value: 2, color: "bg-orange-400", checked: true],
            [value: 3, color: "bg-yellow-400" ],
            [value: 4, color: "bg-lime-400" ],
            [value: 5, color: "bg-green-400" ]
          ]} />
      </HGroup>
      <HGroup caption="评分" size="lg" >
        <Rating   field={:rating3}  mask="mask-star-2" bg_color="bg-green-400"
             half
          options={[
            [value: 1, color: "bg-red-400"],
            [value: 2, color: "bg-orange-400", checked: true],
            [value: 3, color: "bg-yellow-400" ],
            [value: 4, color: "bg-lime-400" ],
            [value: 5, color: "bg-green-400" ]
          ]} />
      </HGroup>

    </Form>
    </div>
    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 rating change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end


end