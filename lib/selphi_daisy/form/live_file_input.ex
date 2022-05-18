defmodule SelphiDaisy.Form.LiveFileInput do
  @moduledoc """
  LiveFileInput 封装 Surface.Components.LiveFileInput，底层 Phoenix.LiveView.Helpers.live_file_input
  如果是图片，使用 live_img_preview进行前端预览。

  使用LiveFileInput之前，需要在 liveview的 mount/3 或 livecomponent的 update/2 调用 allow_upload。
  本质上上传分两步：
  1. 通过live_file_input 上传文件，成功后把文件路径(url)写入changeset中的对应字段
  2. 最后和表单一起提交`上传后的文件路径`
  表单中需要添加一个 hidden input，来保存上传后的路径。
  """
  use  SelphiDaisy.Component
  import SelphiDaisy.Form.Utils
  alias Surface.Components.Form.{Field, FieldContext, ErrorTag, Label}
  alias Surface.Components.LiveFileInput


#  @doc """
#  Upload specified via `allow_upload`
#  使用方法  <LiveFileInput upload={@uploads.avatar} />
#  changeset 中 avatar 和 @uploads.avatar 不是一个东西。
#  @uploads的 avatar 可以是任意名字( 与mount中的allow_upload中的一致)
#  这里命名一致，是为了表明，这里的文件上传是为了填充avatar字段。
#  """"
#  prop upload, :struct, required: true


  include(LiveFileInput)

  # cancel-upload 按钮不能使用 button，否则会 触发 submit，
  # 导致 删除图片失败！！
  def render(assigns) do
    ~F"""
    <section phx-drop-target={@upload.ref}>
        {!--  live_file_input 文件选择框  --}
        <LiveFileInput
           {...included_props(assigns)}
           opts={ @opts}
           upload={@upload}
         />

        {#for {entry, index} <- Enum.with_index(@upload.entries)}
          <article class="upload-entry">
            <figure>
              {!-- Phoenix.LiveView.Helpers.live_img_preview/2 renders a client-side preview  --}
              { live_img_preview(entry) }
              <figcaption>{ entry.client_name } </figcaption>
            </figure>
            <progress value={entry.progress} max="100"> { entry.progress }% </progress>
            {!-- a regular click event whose handler will invoke Phoenix.LiveView.cancel_upload/3  --}
            <a href="#" clss="btn" phx-click="cancel-upload" phx-value-ref={entry.ref} aria-label="cancel">&times;</a>

            {!-- Phoenix.LiveView.Helpers.upload_errors/2 returns a list of error atoms  --}
            {#for  err <- upload_errors(@upload, entry) }
               <p class="alert alert-danger">{ error_to_string(err) }</p>
            {/for}

          </article>
        {/for}
        {#for err <- upload_errors(@upload) }
            <p class="alert alert-danger">{ error_to_string(err) }</p>
        {/for}
    </section>
    """
  end

  # 组件如何使用 i18n ???
  def error_to_string(:too_large), do: gettext("Too large")
  def error_to_string(:not_accepted), do: gettext("You have selected an unacceptable file type")
  def error_to_string(:too_many_files), do: gettext("Too many files")

end