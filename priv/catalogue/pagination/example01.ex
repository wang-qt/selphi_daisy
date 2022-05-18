defmodule SelphiDaisy.Pagination.Example01 do
  @moduledoc """
   Pagination.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Pagination,
      height: "150px",
      title: "Pagination默认样式，页数为1",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <Pagination id="pagination-1" total=9 pg_size=10   />
    """
  end
end
