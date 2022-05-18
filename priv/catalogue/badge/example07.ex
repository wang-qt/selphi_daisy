defmodule SelphiDaisy.Badge.Example07 do
  @moduledoc """
   Badge组件 在button中 .
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Badge,
      height: "90px",
      title: "badge in button",
      direction: "vertical"

  alias SelphiDaisy.{Button, Heroicons}

  def render(assigns) do
    ~F"""
    <Button> Version 2.7.0
     <Badge class="ml-2">new</Badge>
    </Button>
    <Button class="btn-primary">
      Inbox
      <Badge class="ml-2 badge-outline">3</Badge>
    </Button>
    <Button class="btn-secondary btn-outline">
      Notifications
      <Badge class="ml-2 badge-outline">+999</Badge>
    </Button>
    <Button class="btn-accent">
      accent
     <Badge class="ml-2 badge-outline">new</Badge>
    </Button>

    """
  end

end