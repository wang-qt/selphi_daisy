defmodule SelphiDaisy.Form.Rating.Example02 do
  @moduledoc """
  Rating  。
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.Rating,
      height: "300px",
      title: "Rating 组件  size ",
      direction: "vertical"

  alias SelphiDaisy.Form.SampleModel
  alias Surface.Components.Form  # 直接使用底层 Form!!

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

      <Rating   field={:rating}  bg_color="bg-orange-400"
          options={[
            [value: 1],
            [value: 2 , checked: true],
            [value: 3 ],
            [value: 4 ],
            [value: 5 ]
          ]} />
      <Rating   field={:rating}  bg_color="bg-orange-400"
          size="xs"
          options={[
            [value: 1],
            [value: 2 , checked: true],
            [value: 3 ],
            [value: 4 ],
            [value: 5 ]
          ]} />
      <Rating   field={:rating1}  bg_color="bg-orange-400"
          size="sm"
          options={[
            [value: 1],
            [value: 2 , checked: true],
            [value: 3 ],
            [value: 4 ],
            [value: 5 ]
          ]} />
      <Rating   field={:rating2}  bg_color="bg-orange-400"
          size="md"
          options={[
            [value: 1],
            [value: 2 , checked: true],
            [value: 3 ],
            [value: 4 ],
            [value: 5 ]
          ]} />
      <Rating   field={:rating3}  bg_color="bg-orange-400"
          size="lg"
          options={[
            [value: 1],
            [value: 2 , checked: true],
            [value: 3 ],
            [value: 4 ],
            [value: 5 ]
          ]} />


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