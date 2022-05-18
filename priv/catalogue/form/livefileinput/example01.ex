defmodule SelphiDaisy.Form.LiveFileInput.Example01 do
  @moduledoc """
  LiveFileInput live view 文件上传示例,  在 progress 回调中消费 entry（consume_uploaded_entry） 。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.LiveFileInput,
      height: "2500px",
      title: "LiveFileInput 组件 上传  "

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
      |> allow_upload(:avatar,
           accept: ~w(.jpg .jpeg),
           max_entries: 2,
           max_file_size: 100_000,  # 文件大小 100K
           auto_upload: false,
           progress: &handle_progress/3)
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

      <HiddenInput  field={:avatar} placeholder="Type email" is_addon />

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

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end

  def handle_event("cancel-upload", %{"ref" => ref}, socket) do
    IO.puts "收到 LiveFileInput cancel-upload  事件！"
    IO.inspect ref

    {:noreply,  cancel_upload(socket, :avatar, ref)}
  end


  #   :image  上传字段名
  #   entry 待上传的文件
  defp handle_progress(:avatar, entry, socket) do
    :timer.sleep(2000)
    if entry.done? do

      IO.puts "handle_progress 处理上传文件！！"
      IO.inspect  entry
      # %Phoenix.LiveView.UploadEntry{
      #  cancelled?: false,
      #  client_last_modified: nil,
      #  client_name: "4.jpg",
      #  client_size: 29696,
      #  client_type: "image/jpeg",
      #  done?: true,
      #  preflighted?: true,
      #  progress: 100,
      #  ref: "0",
      #  upload_config: :avatar,
      #  upload_ref: "phx-FuEGCq6hGQLJGgRE",
      #  uuid: "96efc795-1164-43d7-8d59-eca12cc825e1",
      #  valid?: true
      #}

      path = consume_uploaded_entry(
        socket,
        entry,
        &upload_static_file(&1, socket)
      )

      {:noreply,
        socket
        |> put_flash(:info, "file #{entry.client_name} uploaded")
        |> update_changeset(:avatar, path)}  # 把上传的文件路径保存在 changeset 的:avatar
    else
      {:noreply, socket}
    end
  end
  def update_changeset(%{assigns: %{changeset: changeset}} =socket, key, value) do
    socket
    |> assign(:changeset, Ecto.Changeset.put_change(changeset, key, value))
  end

  defp upload_static_file(%{path: path} = meta, socket) do
    IO.puts "upload_static_file meta"
    IO.inspect meta

    #  当前路径：执行 mix phx.server 的路径
    #  对于 umbrella 工程，这个路径可能不正确。期望是 web 项目所在路径
    #  为了测试通过，可以在 umbrella 根目录，建立 priv/static/uploads 目录 ！！
    #  或者 使用配置文件指明执行上传的 app名称，使用 :code.priv_dir 计算路径
    {:ok, cwd} = File.cwd()
    IO.puts "当前路径: #{cwd}"

#    dest = Path.join("priv/static/uploads", Path.basename(path))
    dest = Path.join([:code.priv_dir(:selphi_cms_web), "static", "uploads", Path.basename(path)])
    # The `static/uploads` directory must exist for `File.cp!/2` to work.

    File.cp!(path, dest)
#    Routes.static_path(socket, "/images/#{Path.basename(dest)}")

    {:ok, "/uploads/#{Path.basename(dest)}"}
  end




end