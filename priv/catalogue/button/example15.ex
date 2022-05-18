defmodule SelphiDaisy.Button.Example15 do
  @moduledoc """
   使用 `loading`.
  使用方法 <Button  loading />
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Button,
      height: "500px",
      title: "button loading"



  # <div class="p-20 bg-cover card bg-base-200" style="background-image: url(https://picsum.photos/id/314/400/300);">
  def render(assigns) do
    ~F"""
    <div>
       <Button size="lg"  loading loading_text="loading ...">loading</Button>
       <Button color="primary" loading  label="label">content</Button>
       <Button size="sm" color="secondary" loading  label="label"></Button>
    </div>
    <div class="mt-4">
    <Button loading size="lg" >loading</Button>
    <Button loading color="primary">loading</Button>
    <Button loading size="sm" color="secondary">loading</Button>
    <Button loading size="xs" color="accent" >loading</Button>
    </div>

    <div class="mt-4">
    <Button loading outline size="sm" color="primary"  >loading</Button>
    <Button loading outline size="sm" color="secondary" >loading</Button>
    <Button loading outline size="sm" color="accent"  >loading</Button>
    <Button loading outline size="sm" color="ghost" >loading</Button>
    </div>


    <div class="mt-4">
    <Button loading  size="lg" shape="square"  ></Button>
    <Button loading    shape="square"  ></Button>
    <Button loading  size="sm" shape="square"   ></Button>
    <Button loading  size="xs" shape="square"   ></Button>
    </div>

    <div class="mt-4">
    <Button loading  size="lg" shape="circle"  ></Button>
    <Button loading    shape="circle"   ></Button>
    <Button loading  size="sm" shape="circle"   ></Button>
    <Button loading  size="xs" shape="circle"   ></Button>
    </div>
    """
  end
end
