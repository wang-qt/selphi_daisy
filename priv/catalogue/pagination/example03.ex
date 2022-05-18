defmodule SelphiDaisy.Pagination.Example03 do
  @moduledoc """
   Pagination.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Pagination,
      height: "250px",
      title: "Pagination默认样式，页数>10",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <div class="flex flex-col gap-4">
      <Pagination id="pagination-1" total=110 pg_size=10   />
      <Pagination id="pagination-2" total=120 pg_size=10   />
      <Pagination id="pagination-3" total=997 pg_size=10   />
    </div>
    """
  end
end
