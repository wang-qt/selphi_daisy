defmodule SelphiDaisy.ButtonLink.Example15 do
  @moduledoc """
   使用 `loading`.
  使用方法 <Button  loading />
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ButtonLink,
      height: "500px",
      title: "button loading"



  # <div class="p-20 bg-cover card bg-base-200" style="background-image: url(https://picsum.photos/id/314/400/300);">
  def render(assigns) do
    ~F"""
    <div>
       <ButtonLink size="lg"  loading loading_text="loading ...">loading</ButtonLink>
       <ButtonLink color="primary" loading  label="label">content</ButtonLink>
       <ButtonLink size="sm" color="secondary" loading  label="label"></ButtonLink>
    </div>
    <div class="mt-4">
    <ButtonLink loading size="lg" >loading</ButtonLink>
    <ButtonLink loading color="primary">loading</ButtonLink>
    <ButtonLink loading size="sm" color="secondary">loading</ButtonLink>
    <ButtonLink loading size="xs" color="accent" >loading</ButtonLink>
    </div>

    <div class="mt-4">
    <ButtonLink loading outline size="sm" color="primary"  >loading</ButtonLink>
    <ButtonLink loading outline size="sm" color="secondary" >loading</ButtonLink>
    <ButtonLink loading outline size="sm" color="accent"  >loading</ButtonLink>
    <ButtonLink loading outline size="sm" color="ghost" >loading</ButtonLink>
    </div>


    <div class="mt-4">
    <ButtonLink loading  size="lg" shape="square"  ></ButtonLink>
    <ButtonLink loading    shape="square"  ></ButtonLink>
    <ButtonLink loading  size="sm" shape="square"   ></ButtonLink>
    <ButtonLink loading  size="xs" shape="square"   ></ButtonLink>
    </div>

    <div class="mt-4">
    <ButtonLink loading  size="lg" shape="circle"  ></ButtonLink>
    <ButtonLink loading    shape="circle"   ></ButtonLink>
    <ButtonLink loading  size="sm" shape="circle"   ></ButtonLink>
    <ButtonLink loading  size="xs" shape="circle"   ></ButtonLink>
    </div>
    """
  end
end
