defmodule SelphiDaisy.Pagination.Example04 do
  @moduledoc """
   Pagination  size= ~w(lg md  sm  xs  ).
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Pagination,
      height: "500px",
      title: "Pagination 页数>10，size 大小",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <div class="flex flex-col gap-4">
      <Pagination id="pagination-1" size="xs" total=110 pg_size=10   />
      <Pagination id="pagination-2" size="sm" total=120 pg_size=10   />
      <Pagination id="pagination-3"  size="md" total=130 pg_size=10   />
      <Pagination id="pagination-4"   total=130 pg_size=10   />
      <Pagination id="pagination-5" size="lg" total=130 pg_size=10   />
      <Pagination id="pagination-6" total=997 pg_size=10   />
    </div>
    """
  end
end
