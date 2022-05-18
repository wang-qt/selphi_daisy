defmodule SelphiDaisy.ButtonLink.Example17 do
  @moduledoc """
   使用 `no-animation`.
  由于不同的标记 <a> <input>上使用btn 相关样式，由于不同标记的属性/功能区别较大，只是借用btn的样式。
  eg. 表格的 查看/编辑/删除，本质上是跳转连接，外观上和button一致。
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ButtonLink,
      height: "400px",
      title: "不同的tag使用 btn 样式"

  alias Surface.Components.{Link, LiveRedirect, LivePatch}


  # <div class="p-20 bg-cover card bg-base-200" style="background-image: url(https://picsum.photos/id/314/400/300);">
  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 ">
      <ButtonLink  outline color="primary">Button</ButtonLink>
      <a role="button" class="btn btn-secondary">Link</a>
      <a role="button" class="btn btn-secondary btn-outline">Link</a>
      <button type="submit" class="btn">button</button>
      <input type="button" value="Input" class="btn">
      <input type="submit" value="Submit" class="btn">
      <input type="reset" value="Reset" class="btn">
      {!-- 跳转到其他页面 --}
      <Link
        label="Delete"
        to="/users/1"
        class="btn btn-error"
        method={:delete}
        opts={data: [confirm: "Really?"]}>
        Delete User
      </Link>
      {!-- 跳转到本liveview --}
      <LivePatch label="Edit"
         to="/user/1/edit"
         class="btn btn-warning btn-outline">
         Live Patch
      </LivePatch>
      {!-- 跳转到其他 liveview  --}
      <LiveRedirect label="Edit"
         to="/home"
         class="btn btn-ghost ">
         Live Redirect
      </LiveRedirect>

    </div>
    """
  end
end
