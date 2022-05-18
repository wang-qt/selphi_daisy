defmodule SelphiDaisy.Form.LiveFileInput.Example02 do
  @moduledoc """
  LiveFileInput live view 文件上传示例，在 submit事件中，消费 entry（consume_uploaded_entry） 。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.LiveFileInput,
      height: "2500px",
      title: "LiveFileInput 组件 上传  "


  # ???
  alias SelphiCmsWeb.Router.Helpers, as: Routes

  alias SelphiDaisy.Form.SampleModel


  alias Surface.Components.Form  # 直接使用底层 Form!!
  alias Surface.Components.Form.HiddenInput
  alias SelphiDaisy.Divider

  data changeset, :map,
       default:
         SampleModel.changeset(%SampleModel{}, %{
           "username" => "bulma",
           "email" => "hello@"
         })
         |> Map.put(:action, :insert)


  def mount(params, session, socket)  do
    {:ok,
      socket
      |> assign(:uploaded_files, [])
      |> allow_upload(:avatar,
           accept: ~w(.jpg .jpeg),
           max_entries: 1,
           max_file_size: 100_000,  # 文件大小 100K
           auto_upload: false )
      }
  end

  def render(assigns) do
    ~F"""
    <div class="border-base-300  border flex  min-h-[6rem] min-w-[18rem] max-w-4xl items-center justify-center m-4  ">
    <Form
      for={@changeset}
      change={"change"}
      submit={"submit"}
      opts={autocomplete: "off"}
      class="w-full">

      <HiddenInput  field={:avatar} placeholder="Type email"  />

      <LiveFileInput upload={@uploads.avatar} />

      <Divider></Divider>

      <button type="submit" class="btn btn-primary">Upload</button>

    </Form>
    </div>
    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 LiveFileInput change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end


  def handle_event("submit", %{"sample_model" => changes}, socket) do
    IO.puts "收到 LiveFileInput submit  事件！"
    IO.inspect changes

    # ["/uploads/live_view_upload-1648624210-400577458120951-6"]
    IO.puts " submit  事件    socket！"
    IO.inspect socket.assigns.uploads

    uploaded_files =
      consume_uploaded_entries(socket, :avatar, fn %{path: path}, _entry ->
        # ???
        dest = Path.join([:code.priv_dir(:selphi_cms_web), "static", "uploads", Path.basename(path)])
        # The `static/uploads` directory must exist for `File.cp!/2` to work.
        File.cp!(path, dest)
        {:ok, Routes.static_path(socket, "/uploads/#{Path.basename(dest)}")}
      end)


    IO.puts "上传文件列表："
    IO.inspect uploaded_files

    socket = update(socket, :uploaded_files, &(&1 ++ uploaded_files))

    {:noreply, socket}
  end

  def handle_event("cancel-upload", %{"ref" => ref}, socket) do
    IO.puts "收到 LiveFileInput cancel-upload  事件！"
    IO.inspect ref

#    cs =
#      SampleModel.changeset(%SampleModel{}, changes)
#      |> Map.put(:action, :insert)
#
#    socket = assign(socket, :changeset, cs)

    socket = cancel_upload(socket, :avatar, ref)

    IO.puts " LiveFileInput cancel-upload  更新socket！"
    IO.inspect socket.assigns.uploads


    {:noreply, socket }
  end






end