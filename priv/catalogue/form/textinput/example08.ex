defmodule SelphiDaisy.Form.TextInput.Example08 do
  @moduledoc """
  input-text  addon的button 需要手动设置 size  。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.TextInput,
      height: "600px",
      title: "TextInput组件，addon ",
      direction: "vertical"

   alias SelphiDaisy.Form.SampleModel


  alias Surface.Components.Form  # 直接使用底层 Form!!
  alias SelphiDaisy.Form.HGroup
  alias  SelphiDaisy.Button
  alias SelphiDaisy.Form.LeftAddon
  alias SelphiDaisy.Form.RightAddon

  data changeset, :map,
       default:
         SampleModel.changeset(%SampleModel{}, %{
           "username" => "bulma",
           "email" => "hello@"
         })
         |> Map.put(:action, :insert)

  def render(assigns) do
    ~F"""
    <div class="border-base-300  border flex  min-h-[6rem] min-w-[18rem] max-full items-center justify-center m-4  ">
    <Form
      for={@changeset}
      change={"change"}
      submit={"submit"}
      opts={autocomplete: "off"}
      class="w-full">

      <TextInput  field={:email} placeholder="Type here"
              bordered   color="primary"
             icon_left="mail"
             label="邮箱"
             help_text="邮箱不能为空"
             value="hello@">

         <LeftAddon>
             <Button outline color="primary" >primary </Button>
         </LeftAddon>
      </TextInput>

      <TextInput  field={:email} placeholder="Type here"
              bordered   color="primary"
             icon_left="mail"
             label="邮箱"
             help_text="邮箱不能为空"
             value="hello@">

         <RightAddon>
             <Button outline color="primary" >primary </Button>
         </RightAddon>
      </TextInput>




      <TextInput  field={:email} placeholder="Type here"
              bordered   color="primary"
             icon_left="mail"
             label="邮箱"
             help_text="邮箱不能为空"
             value="hello@">
          <LeftAddon>
             <:controls>
             <Button outline color="primary" >primary </Button>
             </:controls>
            <:controls>
             <Button outline color="secondary" >primary </Button>
            </:controls>
            <:controls>
             <Button outline color="accent" >primary </Button>
            </:controls>
          </LeftAddon>

         <RightAddon>
            <:controls>
             <Button outline color="primary" >primary </Button>
            </:controls>
            <:controls>
             <Button outline color="secondary" >primary </Button>
            </:controls>
            <:controls>
             <Button outline color="accent" >primary </Button>
            </:controls>
         </RightAddon>

      </TextInput>


      <TextInput  field={:email} placeholder="Type here"
              bordered   color="primary"
             icon_left="mail"
             label="邮箱"
             help_text="邮箱不能为空"
             value="hello@"
             size="xs" >

         <LeftAddon>
             <Button outline color="primary" size="xs">primary </Button>
         </LeftAddon>
      </TextInput>


      <TextInput  field={:email} placeholder="Type here"
              bordered   color="primary"
             icon_left="mail"
             label="邮箱"
             help_text="邮箱不能为空"
             value="hello@"
             size="sm" >

         <LeftAddon>
             <Button outline color="primary" size="sm">primary </Button>
         </LeftAddon>
      </TextInput>


      <TextInput  field={:email} placeholder="Type here"
              bordered   color="primary"
             icon_left="mail"
             label="邮箱"
             help_text="邮箱不能为空"
             value="hello@"
             size="md" >

         <LeftAddon>
             <Button outline color="primary" size="md">primary </Button>
         </LeftAddon>
      </TextInput>

      <TextInput  field={:email} placeholder="Type here"
              bordered   color="primary"
             icon_left="mail"
             label="邮箱"
             help_text="邮箱不能为空"
             value="hello@"
             size="lg" >

         <LeftAddon>
             <Button outline color="primary" size="lg">primary </Button>
         </LeftAddon>
      </TextInput>

      <TextInput  field={:email} placeholder="Type here"
              bordered   color="primary"
             icon_left="mail"
             label="邮箱"
             help_text="邮箱不能为空"
             value="hello@"
             size="lg" >

         <LeftAddon>
             <Button outline color="primary" size="lg" loading >primary </Button>
         </LeftAddon>
      </TextInput>


      <TextInput  field={:email} placeholder="Type here"
              bordered   color="primary"
             icon_left="mail"
             label="邮箱"
             help_text="邮箱不能为空"
             value="hello@"
              >

         <LeftAddon>
             <Button   disabled >primary </Button>
         </LeftAddon>
      </TextInput>




    </Form>
    </div>


    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到checkbox change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end

end