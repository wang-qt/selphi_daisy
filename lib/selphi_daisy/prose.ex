defmodule SelphiDaisy.Prose do
  @moduledoc """
  进度条. https://tailwindcss.com/docs/typography-plugin
  一系列的 prose 类，为原始 html 提供美观的 书写样式

  - prose	`Component`	Progress element
  - prose-gray	`Modifier`	灰度
  - prose-slate	`Modifier`	灰度
  - prose-zinc	`Modifier`	灰度
  - prose-neutral	`Modifier`	灰度
  - prose-stone	`Modifier`	灰度
  - max-w-none	`Responsive`	 取消prose宽度限制
  - prose-sm	`Responsive`	  大小
  - prose-base	`Responsive`	  默认大小
  - prose-lg	`Responsive`	大小
  - prose-xl	`Responsive`	大小  eg.  lg:prose-xl
  - prose-2xl	`Responsive`	大小
  - prose-invert	`Responsive`	黑夜模式样式 eg. dark:prose-invert
  元素修改器 eg. prose-img:rounded-xl prose-headings:underline
     prose-a:text-blue-600 hover:prose-a:text-blue-500
   - prose-headings:{utility}	 `Modifier`   目标 h1, h2, h3, h4, th
   - prose-lead:{utility}	      `Modifier`   目标 [class~="lead"]
   - prose-h1:{utility}	      `Modifier`   目标 h1
   - prose-h2:{utility}	      `Modifier`   目标 h2
   - prose-h3:{utility}      `Modifier`   目标 h3
   - prose-h4:{utility}      `Modifier`   目标 h4
   - prose-p:{utility}       `Modifier`   目标 p
   - prose-a:{utility}       `Modifier`   目标 a
   - prose-blockquote:{utility}       `Modifier`   目标 blockquote
   - prose-figure:{utility}       `Modifier`   目标 figure
   - prose-figcaption:{utility}       `Modifier`   目标 figcaption
   - prose-strong:{utility}      `Modifier`   目标 strong
   - prose-em:{utility}     `Modifier`   目标 em
   - prose-code:{utility}     `Modifier`   目标 code
   - prose-pre:{utility}     `Modifier`   目标 pre
   - prose-ol:{utility}     `Modifier`   目标 ol
   - prose-ul:{utility}     `Modifier`   目标 ul
   - prose-li:{utility}     `Modifier`   目标 li
   - prose-table:{utility}     `Modifier`   目标 table
   - prose-thead:{utility}     `Modifier`   目标 thead
   - prose-tr:{utility}      `Modifier`   目标 tr
   - prose-th:{utility}       `Modifier`   目标 th
   - prose-td:{utility}       `Modifier`   目标 td
   - prose-img:{utility}       `Modifier`   目标 img
   - prose-video:{utility}       `Modifier`   目标 video
   - prose-hr:{utility}      `Modifier`   目标 hr
    Utility
   - not-prose      `Utility`    prose内部取消 prose样式
   - not-prose      `Utility`    prose内部取消 prose样式
   此外还可以在tailwind.config.js中自定义各个元素的theme(颜色)，参见typography-plugin文档
  """
  use Surface.Component

  @doc "其他tw类，eg. 宽度 w-56 "
  prop class, :css_class, default: []

  @doc " "
  slot  default

  def render(assigns) do
    ~F"""
    <article class={["prose"] ++ @class}>
       <#slot />
    </article>
    """
  end


end