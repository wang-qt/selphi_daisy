defmodule SelphiDaisy.Table.Example05 do
  @moduledoc """
  Table表格使用示例.
    albums = [
      %{id: 1, name: "The Dark Side of the Moon", job: "Quality Control Specialist", artist: "Pink Floyd", released: "March 1, 1973"},
      %{id: 1,name: "OK Computer", job: "Quality Control Specialist", artist: "Radiohead", released: "June 16, 1997"},
      %{
        id: 3,
        name: "Disraeli Gears",
        job: "Quality Control Specialist",
        artist: "Cream",
        released: "November 2, 1967",
        selected: true
      },
      %{id: 4, name: "Physical Graffiti", job: "Quality Control Specialist", artist: "Led Zeppelin", released: "February 24, 1975"},
      %{id: 5, name: "Physical Graffiti", job: "Quality Control Specialist", artist: "Led Zeppelin", released: "February 24, 1975"},
      %{id: 6, name: "Physical Graffiti", job: "Quality Control Specialist", artist: "Led Zeppelin", released: "February 24, 1975"},
      %{id: 7, name: "Physical Graffiti", job: "Quality Control Specialist", artist: "Led Zeppelin", released: "February 24, 1975"},
      %{id: 8, name: "Physical Graffiti", job: "Quality Control Specialist", artist: "Led Zeppelin", released: "February 24, 1975"},
      %{id: 9, name: "Physical Graffiti", job: "Quality Control Specialist", artist: "Led Zeppelin", released: "February 24, 1975"},
      %{id: 10, name: "Physical Graffiti", job: "Quality Control Specialist", artist: "Led Zeppelin", released: "February 24, 1975"}
    ]

  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Table,
      height: "900px",
      title: "Table with visual elements",
      direction: "vertical"

  alias SelphiDaisy.Table.Column
  alias SelphiDaisy.Avatar
  alias SelphiDaisy.Button

  def mount(_params,_session,socket) do
    albums = [
      %{id: 1, name: "The Dark Side of the Moon", job: "Quality Control Specialist", artist: "Pink Floyd", released: "March 1, 1973"},
      %{id: 1,name: "OK Computer", job: "Quality Control Specialist", artist: "Radiohead", released: "June 16, 1997"},
      %{
        id: 3,
        name: "Disraeli Gears",
        job: "Quality Control Specialist",
        artist: "Cream",
        released: "November 2, 1967",
        selected: true
      },
      %{id: 4, name: "Physical Graffiti", job: "Quality Control Specialist", artist: "Led Zeppelin", released: "February 24, 1975"},
      %{id: 5, name: "Physical Graffiti", job: "Quality Control Specialist", artist: "Led Zeppelin", released: "February 24, 1975"},
      %{id: 6, name: "Physical Graffiti", job: "Quality Control Specialist", artist: "Led Zeppelin", released: "February 24, 1975"},
      %{id: 7, name: "Physical Graffiti", job: "Quality Control Specialist", artist: "Led Zeppelin", released: "February 24, 1975"},
      %{id: 8, name: "Physical Graffiti", job: "Quality Control Specialist", artist: "Led Zeppelin", released: "February 24, 1975"},
      %{id: 9, name: "Physical Graffiti", job: "Quality Control Specialist", artist: "Led Zeppelin", released: "February 24, 1975"},
      %{id: 10, name: "Physical Graffiti", job: "Quality Control Specialist", artist: "Led Zeppelin", released: "February 24, 1975"}
    ]

    {:ok, assign(socket, albums: albums)}
  end

  def render(assigns) do
    ~F"""
    <div class="overflow-x-auto w-full">
      <Table id="live-table" items={album <- @albums} check hover zebra >
        <Column title="ID"> {album.id} </Column>
        <Column title="Title">
            <div class="flex items-center space-x-3">
               <Avatar size="12" mask="squircle">
                <img src="https://api.lorem.space/image/face?hash=92048">
               </Avatar>
               <div>
                  <div class="font-bold">{album.name}</div>
                  <div class="text-sm opacity-50">(Released: <strong>{album.released}</strong>)</div>
               </div>
            </div>
        </Column>
        <Column title="job"> {album.job} </Column>
        <Column title="Artist">
          <a href="#">{album.artist}</a>
        </Column>
        <Column title="Released">
          {album.released}
        </Column>
        <Column title="操作">
           <Button class="btn btn-outline btn-primary btn-xs">查看</Button>
           <Button class="btn btn-outline btn-secondary btn-xs">编辑</Button>
           <Button class="btn btn-outline btn-accent btn-xs">删除</Button>
        </Column>
      </Table>
    </div>
    """
  end

end