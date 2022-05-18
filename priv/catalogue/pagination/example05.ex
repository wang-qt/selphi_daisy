defmodule SelphiDaisy.Pagination.Example05 do
  @moduledoc """
   Pagination  color = ~w(neutral primary  secondary accent info success warning error ghost link ).
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Pagination,
      height: "600px",
      title: "Pagination 页数>10，color",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <div class="flex flex-col gap-4">
      <Pagination id="pagination-1" size="sm"  total=110 pg_size=10   />
      <Pagination id="pagination-2" size="sm" color="neutral" total=120 pg_size=10   />
      <Pagination id="pagination-3" size="sm" color="primary" total=130 pg_size=10   />
      <Pagination id="pagination-5" size="sm" color="secondary" total=130 pg_size=10   />
      <Pagination id="pagination-6" size="sm" color="accent" total=997 pg_size=10   />
      <Pagination id="pagination-7" size="sm" color="info" total=997 pg_size=10   />
      <Pagination id="pagination-8" size="sm" color="success" total=997 pg_size=10   />
      <Pagination id="pagination-9" size="sm" color="warning" total=997 pg_size=10   />
      <Pagination id="pagination-10" size="sm" color="error" total=997 pg_size=10   />
      <Pagination id="pagination-11" size="sm" color="ghost" total=997 pg_size=10   />
      <Pagination id="pagination-12" size="sm" color="link" total=997 pg_size=10   />
    </div>
    """
  end
end
