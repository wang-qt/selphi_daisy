defmodule SelphiDaisy.Pagination.Example06 do
  @moduledoc """
   Pagination  color = ~w(neutral primary  secondary accent info success warning error ghost link ).
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Pagination,
      height: "600px",
      title: "Pagination 页数>10，outline",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <div class="flex flex-col gap-4">
      <Pagination id="pagination-1" size="sm" outline total=110 pg_size=10   />
      <Pagination id="pagination-2" size="sm" color="neutral" outline total=120 pg_size=10   />
      <Pagination id="pagination-3" size="sm" color="primary" outline total=130 pg_size=10   />
      <Pagination id="pagination-5" size="sm" color="secondary" outline total=130 pg_size=10   />
      <Pagination id="pagination-6" size="sm" color="accent" outline total=997 pg_size=10   />
      <Pagination id="pagination-7" size="sm" color="info" outline total=997 pg_size=10   />
      <Pagination id="pagination-8" size="sm" color="success" outline total=997 pg_size=10   />
      <Pagination id="pagination-9" size="sm" color="warning" outline total=997 pg_size=10   />
      <Pagination id="pagination-10" size="sm" color="error" outline total=997 pg_size=10   />
      <Pagination id="pagination-11" size="sm" color="ghost" outline total=997 pg_size=10   />
      <Pagination id="pagination-12" size="sm" color="link" outline total=997 pg_size=10   />
    </div>
    """
  end
end
