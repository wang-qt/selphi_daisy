defmodule SelphiDaisy.Alert.Example09 do
  @moduledoc """
   alert 带有标题，和大量内容.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Alert,
      height: "200px",
      title: "alert with large content",
      direction: "vertical"

  alias   SelphiDaisy.Alert.{Icon,Action}

  def render(assigns) do
    ~F"""
    <Alert>
      <Icon>
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="#009688" class="flex-shrink-0 w-6 h-6 mx-2">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9"></path>
    </svg> 
      </Icon>

      <h4>Lorem ipsum dolor sit!</h4>
      <p class="text-sm text-base-content text-opacity-60">
            Lorem ipsum dolor sit amet, consectetur adip! Lorem ipsum dolor
            sit amet, consectetur adip!Lorem ipsum dolor sit amet, consectetur
            adip!Lorem ipsum dolor sit amet, consectetur adip!Lorem ipsum
            dolor sit amet, consectetur adip!Lorem ipsum dolor sit amet,
            consectetur adip!
          </p>

      <Action>
         <button class="btn btn-sm btn-ghost btn-square">
           <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="w-6 h-6 stroke-current">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h.01M12 12h.01M19 12h.01M6 12a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0z"></path>
           </svg>
         </button>
      </Action>
    </Alert>
    """
  end

end