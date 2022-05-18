defmodule SelphiDaisy.Breadcrumb.Item do
  @moduledoc """
  Renderless holder of Breadcrumb.Item data.
  """

  use Surface.Component, slot: "items"

  alias Surface.Components.{Link, LiveRedirect, LivePatch}

  @doc "Breadcrumb text"
  prop link_type, :string, values: ~w(link live_redirect live_patch)

  @doc "Breadcrumb text"
  prop label, :string

  @doc "Url to render, optional and should not be supplied on last item to grey out"
  prop to, :string

  @doc "Css classes to propagate down to <a>"
  prop class, :css_class, default: []

  @doc "Add arbitrary attrs like  tabindex "
  prop opts, :keyword, default: []


  @doc """
  The content of the generated `<a>` element. If no content is provided.
  """
  slot default

  def render(assigns) do
    ~F"""
     <li>
          {#if !is_nil(@to) && @link_type == "link" }
           <Link to={@to} class={@class} opts={@opts} >
               <#slot> {@label} </#slot>
           </Link>
          {/if}
          {#if !is_nil(@to) && @link_type == "live_redirect"  }
          <LiveRedirect to={@to}  class={@class} opts={@opts} >
               <#slot> {@label} </#slot>
          </LiveRedirect>
          {/if}
          {#if !is_nil(@to) && @link_type == "live_patch" }
          <LivePatch to={@to} class={@class} opts={@opts} >
           <#slot> {@label} </#slot>
          </LivePatch>
          {/if}
          {#if is_nil(@to)}
          <#slot> {@label} </#slot>
          {/if}
      </li>
    """
  end



end