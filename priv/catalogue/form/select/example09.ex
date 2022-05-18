defmodule SelphiDaisy.Form.Select.Example09 do
  @moduledoc """
  select  。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.Select,
      height: "700px",
      title: "select 组件 addon ",
      direction: "vertical"

  alias SelphiDaisy.Form.SampleModel

  alias Surface.Components.Form  # 直接使用底层 Form!!


  alias  SelphiDaisy.Button
  alias SelphiDaisy.Form.TextInput
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
    <div class="border-base-300  border flex  min-h-[6rem] min-w-[18rem] max-w-4xl items-center justify-center m-4  ">
    <Form
      for={@changeset}
      change={"change"}
      submit={"submit"}
      opts={autocomplete: "off"}
      class="w-full">


      <Select  field={:select}  bordered color="primary" icon_left="mail"
          label="类型"
          help_text="类型不能为空"
          options={[ "Select dropdown", "with options" ]} >
         <LeftAddon>
             <Button outline color="primary" >primary </Button>
         </LeftAddon>
      </Select>

      <Select  field={:select1}  bordered color="primary" icon_left="mail"
          label="类型"
          help_text="类型不能为空"
          options={[ "Select dropdown", "with options" ]} >
         <RightAddon>
             <Button outline color="primary" >primary </Button>
         </RightAddon>
      </Select>

      {!--  select作为 textinput的addon，注意 is_addon 的用法 --}
      <TextInput  field={:email} placeholder="Type here"
              bordered   color="primary"
             icon_left="mail"
             label="邮箱"
             help_text="邮箱不能为空"
             value="hello@">
         <LeftAddon>
             <Select  is_addon field={:select2}  bordered color="primary"
                options={[ "$", "£", "€" ]}/>
         </LeftAddon>
         <RightAddon>
             <Button outline color="primary" >primary </Button>
         </RightAddon>
      </TextInput>

      {!--  textinput 作为 select 的addon，注意 is_addon 的用法 --}
      <Select  field={:select3}  bordered color="primary" icon_left="mail"
          label="类型"
          help_text="类型不能为空"
          options={[ "Select dropdown", "with options" ]} >
         <RightAddon>
             <:controls>
                <TextInput is_addon  field={:email} placeholder="Type here"
                       bordered   color="primary"
                       icon_left="mail"
                       label="邮箱"
                       help_text="邮箱不能为空"
                        value="hello@" />
             </:controls>
             <:controls>
              <Button outline color="primary" >primary </Button>
             </:controls>
         </RightAddon>
      </Select>


      <Select  field={:select4}  bordered color="primary" icon_left="mail"
          label="类型"
          help_text="类型不能为空"
          options={[ "Select dropdown", "with options" ]} >
          <LeftAddon>
            <:controls>
             <Button outline color="primary" >primary </Button>
            </:controls>
            <:controls>
             <Button outline color="secondary" >secondary </Button>
            </:controls>
            <:controls>
             <Button outline color="accent" >accent </Button>
            </:controls>
         </LeftAddon>
         <RightAddon>
            <:controls>
             <Button outline color="primary" >primary </Button>
            </:controls>
            <:controls>
             <Button outline color="secondary" >secondary </Button>
            </:controls>
            <:controls>
             <Button outline color="accent" >accent </Button>
            </:controls>
         </RightAddon>
      </Select>

      {!-- 注意：需要手动设置 addon的size --}
      <Select  field={:select}  bordered color="primary" icon_left="mail"
          label="类型"
          help_text="类型不能为空"
          options={[ "Select dropdown", "with options" ]}
          size="xs" >

         <LeftAddon>
             <Button size="xs" outline color="primary" >primary </Button>
         </LeftAddon>
      </Select>

      <Select  field={:select3}  bordered color="primary"
          label="类型"
          help_text="类型不能为空"
          options={[ "$", "£", "€" ]}
          size="sm" >
         <RightAddon>
             <:controls>
                <TextInput size="sm"  is_addon  field={:email} placeholder="Type here"
                       bordered   color="primary"
                       icon_left="mail"
                       label="邮箱"
                       help_text="邮箱不能为空"
                        value="hello@" />
             </:controls>
             <:controls>
              <Button size="sm"  outline color="primary" >primary </Button>
             </:controls>
         </RightAddon>
      </Select>
      <Select  field={:select3}  bordered color="primary"
          label="类型"
          help_text="类型不能为空"
          options={[ "$", "£", "€" ]}
          size="md" >
         <RightAddon>
             <:controls>
                <TextInput size="md"  is_addon  field={:email} placeholder="Type here"
                       bordered   color="primary"
                       icon_left="mail"
                       label="邮箱"
                       help_text="邮箱不能为空"
                        value="hello@" />
             </:controls>
             <:controls>
              <Button size="md"  outline color="primary" >primary </Button>
             </:controls>
         </RightAddon>
      </Select>
      <Select  field={:select3}  bordered color="primary"
          label="类型"
          help_text="类型不能为空"
          options={[ "$", "£", "€" ]}
          size="lg" >
         <RightAddon>
             <:controls>
                <TextInput size="lg"  is_addon  field={:email} placeholder="Type here"
                       bordered   color="primary"
                       icon_left="mail"
                       label="邮箱"
                       help_text="邮箱不能为空"
                        value="hello@" />
             </:controls>
             <:controls>
              <Button size="lg"  outline color="primary" >primary </Button>
             </:controls>
         </RightAddon>
      </Select>
      {!-- loading --}
      <Select  loading field={:select3}  bordered color="primary"
          label="类型"
          help_text="类型不能为空"
          options={[ "$", "£", "€" ]}
          size="lg" >
         <RightAddon>
             <:controls>
                <TextInput loading size="lg"  is_addon  field={:email} placeholder="Type here"
                       bordered   color="primary"
                       icon_left="mail"
                       label="邮箱"
                       help_text="邮箱不能为空"
                        value="hello@" />
             </:controls>
             <:controls>
              <Button disabled size="lg"  outline color="primary" >primary </Button>
             </:controls>
         </RightAddon>
      </Select>

    </Form>
    </div>


    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 select change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end

end