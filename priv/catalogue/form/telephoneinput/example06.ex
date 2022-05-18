defmodule SelphiDaisy.Form.TelephoneInput.Example06 do
  @moduledoc """
   TelephoneInput  示例。
  2008年5月份开始, 在香港所有5,6,9 这三个数字开始的八位数字电话号码都是手机用的，
  例如:(+852)5234 5678 / (+852)6345 66789 / (+852)9123 4567

  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.TelephoneInput,
      height: "700px",
      title: "TelephoneInput 组件 addon "

  alias SelphiDaisy.Form.SampleModel

  alias Surface.Components.Form  # 直接使用底层 Form!!
  alias SelphiDaisy.Form.HGroup

  alias  SelphiDaisy.Button
  alias  SelphiDaisy.Form.Select
  alias SelphiDaisy.Form.LeftAddon
  alias SelphiDaisy.Form.RightAddon

  data changeset, :map,
       default:
         SampleModel.changeset(%SampleModel{}, %{
           "username" => "bulma",
           "email" => "hello@",
           "domain" => ""
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

      <TelephoneInput  field={:tel} placeholder="请输入手机号" bordered
                    color="primary"  icon_left="phone"
                    maxlength=11  minlength=11
                   {!--  opts={phx_debounce: "blur" } --}
                    label="手机号"  help_text="手机号11位"  >
         <LeftAddon>
           <Select is_addon   field={:domain}    bordered color="primary"
              control_class="w-32"
              label="选择区号"
              {!-- prompt={[key: "区号", disabled: true]} --}
              prompt={[key: "区号" ]}
              {!-- selected={@domain} --}
              options={["+086", "+852", "+853", "+886" ]}   />
         </LeftAddon>

      </TelephoneInput>


      <TelephoneInput  field={:tel1} placeholder="请输入手机号" bordered
                    color="primary"  icon_left="phone"
                    maxlength=11  minlength=11
                   {!--  opts={phx_debounce: "blur" } --}
                    label="手机号"  help_text="手机号11位"  >
         <LeftAddon>
           <Select is_addon   field={:domain}    bordered color="primary"
              control_class="w-32"
              label="选择区号"
              {!-- prompt={[key: "区号", disabled: true]} --}
              prompt={[key: "区号", disabled: true ]}
              {!-- selected={@domain} --}
              options={[ {"中国大陆","+086"}, {"香港", "+852"}, {"澳门","+853"}, {"中国台湾","+886"} ]}   />
         </LeftAddon>

      </TelephoneInput>





    </Form>
    </div>


    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 PasswordInput change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end




end