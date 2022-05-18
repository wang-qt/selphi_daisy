defmodule SelphiDaisy.Prose.Example02 do
  @moduledoc """
  Prose 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Prose,
      height: "900px",
      title: " Prose ",
      direction: "vertical"

  def render(assigns) do

    ~F"""
    <div class=" flex flex-col min-h-[6rem] min-w-[18rem]   items-center justify-center">
    <Prose class="prose-lg">
       <h1>Garlic bread with cheese: What the science tells us</h1>
       <p>
         For years parents have espoused the health benefits of eating garlic bread with cheese to their
         children, with the food earning such an iconic status in our culture that kids will often dress
         up as warm, cheesy loaf for Halloween.
        </p>
       <p>
          But a recent study shows that the celebrated appetizer may be linked to a series of rabies cases
          springing up around the country.
       </p>
    </Prose>
    <Prose class="prose-xl mt-10">
       <h1>Garlic bread with cheese: What the science tells us</h1>
       <p>
         For years parents have espoused the health benefits of eating garlic bread with cheese to their
         children, with the food earning such an iconic status in our culture that kids will often dress
         up as warm, cheesy loaf for Halloween.
        </p>
       <p>
          But a recent study shows that the celebrated appetizer may be linked to a series of rabies cases
          springing up around the country.
       </p>
    </Prose>
    </div>
    """
  end

end