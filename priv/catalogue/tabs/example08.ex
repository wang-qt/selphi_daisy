defmodule SelphiDaisy.Tabs.Example08 do
  @moduledoc """
  Tabs 组件 Bordered样式，图标.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Tabs,
      height: "500px",
      title: " Tabs 通过slot 添加内容",
      direction: "vertical"

  alias  SelphiDaisy.Tabs.{Tab,TabLabel}
  alias SelphiDaisy.Heroicons

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-sm flex-wrap items-start justify-center gap-2 overflow-x-hidden">
      <Tabs id="tabs-1" bordered>
        <Tab   label="Item 1" icon="home">
            <div class="pr-1">
    <div class="box px-5 pt-5 pb-5 lg:pb-0 mt-5">
        <div class="relative text-gray-700">
            <input type="text" class="input input--lg w-full bg-gray-200 pr-10 placeholder-theme-13" placeholder="Search for messages or users...">
            <i class="w-4 h-4 hidden sm:absolute my-auto inset-y-0 mr-3 right-0" data-feather="search"></i>
        </div>

        <div class="overflow-x-auto scrollbar-hidden">
            <div class="flex mt-5">
                <a href="" class="w-10 mr-4 cursor-pointer">
                    <div class="w-10 h-10 flex-none image-fit rounded-full">
                        <img alt="Midone Tailwind HTML Admin Template" class="rounded-full" src="../../../images/6.jpg">
                        <div class="w-3 h-3 bg-theme-9 absolute right-0 bottom-0 rounded-full border-2 border-white"></div>
                    </div>
                    <div class="text-xs text-gray-600 truncate text-center mt-2">John Travolta</div>
                </a>
                <a href="" class="w-10 mr-4 cursor-pointer">
                    <div class="w-10 h-10 flex-none image-fit rounded-full">
                        <img alt="Midone Tailwind HTML Admin Template" class="rounded-full" src="../../../images/6.jpg">
                        <div class="w-3 h-3 bg-theme-9 absolute right-0 bottom-0 rounded-full border-2 border-white"></div>
                    </div>
                    <div class="text-xs text-gray-600 truncate text-center mt-2">Robert De Niro</div>
                </a>
                <a href="" class="w-10 mr-4 cursor-pointer">
                    <div class="w-10 h-10 flex-none image-fit rounded-full">
                        <img alt="Midone Tailwind HTML Admin Template" class="rounded-full" src="../../../images/6.jpg">
                        <div class="w-3 h-3 bg-theme-9 absolute right-0 bottom-0 rounded-full border-2 border-white"></div>
                    </div>
                    <div class="text-xs text-gray-600 truncate text-center mt-2">Robert De Niro</div>
                </a>
                <a href="" class="w-10 mr-4 cursor-pointer">
                    <div class="w-10 h-10 flex-none image-fit rounded-full">
                        <img alt="Midone Tailwind HTML Admin Template" class="rounded-full" src="../../../images/6.jpg">
                        <div class="w-3 h-3 bg-theme-9 absolute right-0 bottom-0 rounded-full border-2 border-white"></div>
                    </div>
                    <div class="text-xs text-gray-600 truncate text-center mt-2">Robert De Niro</div>
                </a>
                <a href="" class="w-10 mr-4 cursor-pointer">
                    <div class="w-10 h-10 flex-none image-fit rounded-full">
                        <img alt="Midone Tailwind HTML Admin Template" class="rounded-full" src="../../../images/6.jpg">
                        <div class="w-3 h-3 bg-theme-9 absolute right-0 bottom-0 rounded-full border-2 border-white"></div>
                    </div>
                    <div class="text-xs text-gray-600 truncate text-center mt-2">Robert De Niro</div>
                </a>
                <a href="" class="w-10 mr-4 cursor-pointer">
                    <div class="w-10 h-10 flex-none image-fit rounded-full">
                        <img alt="Midone Tailwind HTML Admin Template" class="rounded-full" src="../../../images/6.jpg">
                        <div class="w-3 h-3 bg-theme-9 absolute right-0 bottom-0 rounded-full border-2 border-white"></div>
                    </div>
                    <div class="text-xs text-gray-600 truncate text-center mt-2">Robert De Niro</div>
                </a>
                <a href="" class="w-10 mr-4 cursor-pointer">
                    <div class="w-10 h-10 flex-none image-fit rounded-full">
                        <img alt="Midone Tailwind HTML Admin Template" class="rounded-full" src="../../../images/6.jpg">
                        <div class="w-3 h-3 bg-theme-9 absolute right-0 bottom-0 rounded-full border-2 border-white"></div>
                    </div>
                    <div class="text-xs text-gray-600 truncate text-center mt-2">Robert De Niro</div>
                </a>

            </div>
        </div>

    </div>
    </div>


        </Tab>
        <Tab   label="Item 2"  icon="chart-pie" > tab content 2 </Tab>
        <Tab   label="Item 3"  icon="chart-bar" > tab content 3 </Tab>
      </Tabs>
    </div>
    """
  end

end