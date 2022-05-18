defmodule SelphiDaisy.Pagination.Example07 do
  @moduledoc """
   Pagination   mobile 形状，不设置默认为 矩形
   @shape_values ~w(circle square).
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Pagination,
      height: "600px",
      title: "Pagination 页数>10， shape= square ",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <div class="flex flex-col gap-4">
      <Pagination id="pagination-1" size="sm" outline  shape="square" total=110 pg_size=10   />
      <Pagination id="pagination-2" size="sm" color="neutral" outline shape="square" total=120 pg_size=10   />
      <Pagination id="pagination-3" size="sm" color="primary" outline shape="square" total=130 pg_size=10   />
      <Pagination id="pagination-5" size="sm" color="secondary" outline shape="square" total=130 pg_size=10   />
      <Pagination id="pagination-6" size="sm" color="accent" outline shape="square" total=997 pg_size=10   />
      <Pagination id="pagination-7" size="sm" color="info" outline shape="square" total=997 pg_size=10   />
      <Pagination id="pagination-8" size="sm" color="success" outline shape="square" total=997 pg_size=10   />
      <Pagination id="pagination-9" size="sm" color="warning" outline shape="square" total=997 pg_size=10   />
      <Pagination id="pagination-10" size="sm" color="error" outline shape="square" total=997 pg_size=10   />
      <Pagination id="pagination-11" size="sm" color="ghost" outline shape="square" total=997 pg_size=10   />
      <Pagination id="pagination-12" size="sm" color="link" outline shape="square" total=997 pg_size=10   />
    </div>
    """
  end
end
