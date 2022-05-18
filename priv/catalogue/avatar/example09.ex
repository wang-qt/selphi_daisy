defmodule SelphiDaisy.Avatar.Example09 do
  @moduledoc """
  Avatar group with counter, 改变大小
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Avatar,
      height: "160px",
      title: "Avatar group with counter",
      direction: "vertical"

  alias  SelphiDaisy.Avatar.{Placeholder,Group}

  def render(assigns) do
    ~F"""
    <div class="flex justify-center " >
       <Group>
         <Avatar size="20">
           <img src="https://api.lorem.space/image/face?hash=53273">
         </Avatar>
         <Avatar size="20">
           <img src="https://api.lorem.space/image/face?hash=53273">
         </Avatar>
         <Avatar size="20">
           <img src="https://api.lorem.space/image/face?hash=27312">
         </Avatar>
         <Avatar size="20" >
           <img src="https://api.lorem.space/image/face?hash=26448">
         </Avatar>
         <Placeholder label="+99" size="20" ></Placeholder>
       </Group>
    </div>
    """
  end

end