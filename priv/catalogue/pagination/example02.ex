defmodule SelphiDaisy.Pagination.Example02 do
  @moduledoc """
   Pagination.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Pagination,
      height: "500px",
      title: "Pagination默认样式，页数<10",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <div class="flex flex-col gap-4">
      <Pagination id="pagination-1" total=28 pg_size=10   />
      <Pagination id="pagination-2" total=30 pg_size=10   />
      <Pagination id="pagination-3" total=57 pg_size=10   />
      <Pagination id="pagination-4" total=60 pg_size=10   />
      <Pagination id="pagination-5" total=94 pg_size=10   />
      <Pagination id="pagination-6" total=100 pg_size=10   />
    </div>
    """
  end
end
