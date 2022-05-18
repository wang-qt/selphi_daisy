defmodule SelphiDaisy.Cssgg.Example01 do
  @moduledoc """
  css-gg svg icon 基本使用方式.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Cssgg,
      height: "8500px",
      title: "01-css.gg icon",
      direction: "vertical"

  alias SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <div class="grid grid-cols-10 gap-4 ">
      <!-- 1 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="abstract"  /></Button>
        <p>abstract</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="add-r"  /></Button>
        <p>add-r</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="add"  /></Button>
        <p>add</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="adidas"  /></Button>
        <p>adidas</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="airplane"  /></Button>
        <p>airplane</p>
      </div>

      <!-- 2 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="alarm"  /></Button>
        <p>alarm</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="album"  /></Button>
        <p>album</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="align-bottom"  /></Button>
        <p>align-bottom</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="align-center"  /></Button>
        <p>align-center</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="align-left"  /></Button>
        <p>align-left</p>
      </div>

      <!-- 3 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="align-middle"  /></Button>
        <p>align-middle</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="align-right"  /></Button>
        <p>align-right</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="align-top"  /></Button>
        <p>align-top</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="anchor"  /></Button>
        <p>anchor</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="apple-watch"  /></Button>
        <p>apple-watch</p>
      </div>

      <!-- 4 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="arrange-back"  /></Button>
        <p>arrange-back</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="arrange-front"  /></Button>
        <p>arrange-front</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrow-align-h"  /></Button>
        <p>arrow-align-h</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrow-align-v"  /></Button>
        <p>arrow-align-v</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="arrow-bottom-left-o"  /></Button>
        <p>arrow-bottom-left-o</p>
      </div>

      <!-- 5 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="arrow-bottom-left-r"  /></Button>
        <p>arrow-bottom-left-r</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="arrow-bottom-left"  /></Button>
        <p>arrow-bottom-left</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrow-bottom-right-o"  /></Button>
        <p>arrow-bottom-right-o</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrow-bottom-right-r"  /></Button>
        <p>arrow-bottom-right-r</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="arrow-bottom-right"  /></Button>
        <p>arrow-bottom-right</p>
      </div>

      <!-- 6 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="arrow-down-o"  /></Button>
        <p>arrow-down-o</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="arrow-down-r"  /></Button>
        <p>arrow-down-r</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrow-down"  /></Button>
        <p>arrow-down</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrow-left-o"  /></Button>
        <p>arrow-left-o</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="arrow-left-r"  /></Button>
        <p>arrow-left-r</p>
      </div>

      <!-- 7 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="arrow-left"  /></Button>
        <p>arrow-left</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="arrow-long-down-c"  /></Button>
        <p>arrow-long-down-c</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrow-long-down-e"  /></Button>
        <p>arrow-long-down-e</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrow-long-down-l"  /></Button>
        <p>arrow-long-down-l</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="arrow-long-down-r"  /></Button>
        <p>arrow-long-down-r</p>
      </div>

      <!-- 8 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="arrow-long-down"  /></Button>
        <p>arrow-long-down</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="arrow-long-left-c"  /></Button>
        <p>arrow-long-left-c</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrow-long-left-e"  /></Button>
        <p>arrow-long-left-e</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrow-long-left-l"  /></Button>
        <p>arrow-long-left-l</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="arrow-long-left-r"  /></Button>
        <p>arrow-long-left-r</p>
      </div>

      <!-- 9 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="arrow-long-left"  /></Button>
        <p>arrow-long-left</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="arrow-long-right-c"  /></Button>
        <p>arrow-long-right-c</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrow-long-right-e"  /></Button>
        <p>arrow-long-right-e</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrow-long-right-l"  /></Button>
        <p>arrow-long-right-l</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="arrow-long-right-r"  /></Button>
        <p>arrow-long-right-r</p>
      </div>

      <!-- 10 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="arrow-long-right"  /></Button>
        <p>arrow-long-left</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="arrow-long-up-c"  /></Button>
        <p>arrow-long-up-c</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrow-long-up-e"  /></Button>
        <p>arrow-long-up-e</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrow-long-up-l"  /></Button>
        <p>arrow-long-up-l</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="arrow-long-up-r"  /></Button>
        <p>arrow-long-up-r</p>
      </div>

      <!-- 11 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="arrow-long-up"  /></Button>
        <p>arrow-long-up</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="arrow-right-o"  /></Button>
        <p>arrow-right-o</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrow-right-r"  /></Button>
        <p>arrow-right-r</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrow-right"  /></Button>
        <p>arrow-right</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="arrow-top-left-o"  /></Button>
        <p>arrow-top-left-o</p>
      </div>

      <!-- 12 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="arrow-top-left-r"  /></Button>
        <p>arrow-top-left-r</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="arrow-top-left"  /></Button>
        <p>arrow-top-left</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrow-top-right-o"  /></Button>
        <p>arrow-top-right-o</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrow-top-right-r"  /></Button>
        <p>arrow-top-right-r</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="arrow-top-right"  /></Button>
        <p>arrow-top-right</p>
      </div>

      <!-- 13 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="arrow-up-o"  /></Button>
        <p>arrow-up-o</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="arrow-up-r"  /></Button>
        <p>arrow-up-r</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrow-up"  /></Button>
        <p>arrow-up</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrows-breake-h"  /></Button>
        <p>arrows-breake-h</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="arrows-breake-v"  /></Button>
        <p>arrows-breake-v</p>
      </div>

      <!-- 14 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="arrows-exchange-alt-v"  /></Button>
        <p>arrows-exchange-alt-v</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="arrows-exchange-alt"  /></Button>
        <p>arrows-exchange-alt</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrows-exchange-v"  /></Button>
        <p>arrows-exchange-v</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrows-exchange"  /></Button>
        <p>arrows-exchange</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="arrows-expand-down-left"  /></Button>
        <p>arrows-expand-down-left</p>
      </div>

      <!-- 15 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="arrows-expand-down-right"  /></Button>
        <p>arrows-expand-down-right</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="arrows-expand-left-alt"  /></Button>
        <p>arrows-expand-left-alt</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrows-expand-left"  /></Button>
        <p>arrows-expand-left</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrows-expand-right-alt"  /></Button>
        <p>arrows-expand-right-alt</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="arrows-expand-right"  /></Button>
        <p>arrows-expand-right</p>
      </div>


      <!-- 16 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="arrows-expand-up-left"  /></Button>
        <p>arrows-expand-up-left</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="arrows-expand-up-right"  /></Button>
        <p>arrows-expand-up-right</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrows-h-alt"  /></Button>
        <p>arrows-h-alt</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrows-h"  /></Button>
        <p>arrows-h</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="arrows-merge-alt-h"  /></Button>
        <p>arrows-merge-alt-h</p>
      </div>

      <!-- 17 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="arrows-merge-alt-v"  /></Button>
        <p>arrows-merge-alt-v</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="arrows-scroll-h"  /></Button>
        <p>arrows-scroll-h</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrows-scroll-v"  /></Button>
        <p>arrows-scroll-v</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="arrows-shrink-h"  /></Button>
        <p>arrows-shrink-h</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="arrows-shrink-v"  /></Button>
        <p>arrows-shrink-v</p>
      </div>

      <!-- 18 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="arrows-v-alt"  /></Button>
        <p>arrows-v-alt</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="arrows-v"  /></Button>
        <p>arrows-v</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="assign"  /></Button>
        <p>assign</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="asterisk"  /></Button>
        <p>asterisk</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="atlasian"  /></Button>
        <p>atlasian</p>
      </div>

      <!-- 19 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="attachment"  /></Button>
        <p>attachment</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="attribution"  /></Button>
        <p>attribution</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="awards"  /></Button>
        <p>awards</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="backspace"  /></Button>
        <p>backspace</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="band-aid"  /></Button>
        <p>band-aid</p>
      </div>

      <!-- 20 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="battery-empty"  /></Button>
        <p>battery-empty</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="battery-full"  /></Button>
        <p>battery-full</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="battery"  /></Button>
        <p>battery</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="bee"  /></Button>
        <p>bee</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="bell"  /></Button>
        <p>bell</p>
      </div>

      <!-- 21 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="bitbucket"  /></Button>
        <p>bitbucket</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="block"  /></Button>
        <p>block</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="bmw"  /></Button>
        <p>bmw</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="board"  /></Button>
        <p>board</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="bolt"  /></Button>
        <p>bolt</p>
      </div>

      <!-- 22 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="bookmark"  /></Button>
        <p>bookmark</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="border-all"  /></Button>
        <p>border-all</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="border-bottom"  /></Button>
        <p>border-bottom</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="border-left"  /></Button>
        <p>border-left</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="border-right"  /></Button>
        <p>border-right</p>
      </div>

      <!-- 23 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="border-style-dashed"  /></Button>
        <p>border-style-dashed</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="border-style-dotted"  /></Button>
        <p>border-style-dotted</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="border-style-solid"  /></Button>
        <p>border-style-solid</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="border-top"  /></Button>
        <p>border-top</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="bot"  /></Button>
        <p>bot</p>
      </div>


      <!-- 24 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="bowl"  /></Button>
        <p>bowl</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="box"  /></Button>
        <p>box</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="boy"  /></Button>
        <p>boy</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="brackets"  /></Button>
        <p>brackets</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="briefcase"  /></Button>
        <p>briefcase</p>
      </div>

      <!-- 25 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="browse"  /></Button>
        <p>browse</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="browser"  /></Button>
        <p>browser</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="brush"  /></Button>
        <p>brush</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="bulb"  /></Button>
        <p>bulb</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="c-plus-plus"  /></Button>
        <p>c-plus-plus</p>
      </div>

      <!-- 26 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="calculator"  /></Button>
        <p>calculator</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="calendar-dates"  /></Button>
        <p>calendar-dates</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="calendar-due"  /></Button>
        <p>calendar-due</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="calendar-next"  /></Button>
        <p>calendar-next</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="calendar-today"  /></Button>
        <p>calendar-today</p>
      </div>

      <!-- 27 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="calendar-two"  /></Button>
        <p>calendar-two</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="calendar"  /></Button>
        <p>calendar</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="calibrate"  /></Button>
        <p>calibrate</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="camera"  /></Button>
        <p>camera</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="cap"  /></Button>
        <p>cap</p>
      </div>

      <!-- 28 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="captions"  /></Button>
        <p>captions</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="card-clubs"  /></Button>
        <p>card-clubs</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="card-diamonds"  /></Button>
        <p>card-diamonds</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="card-hearts"  /></Button>
        <p>card-hearts</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="card-spades"  /></Button>
        <p>card-spades</p>
      </div>

      <!-- 29 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="carousel"  /></Button>
        <p>carousel</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="cast"  /></Button>
        <p>cast</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="chanel"  /></Button>
        <p>chanel</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="chart"  /></Button>
        <p>chart</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="check-o"  /></Button>
        <p>check-o</p>
      </div>

      <!-- 30 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="check-r"  /></Button>
        <p>check-r</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="check"  /></Button>
        <p>check</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="chevron-double-down-o"  /></Button>
        <p>chevron-double-down-o</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="chevron-double-down-r"  /></Button>
        <p>chevron-double-down-r</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="chevron-double-down"  /></Button>
        <p>chevron-double-down</p>
      </div>

      <!-- 31 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="chevron-double-left-o"  /></Button>
        <p>chevron-double-left-o</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="chevron-double-left-r"  /></Button>
        <p>chevron-double-left-r</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="chevron-double-left"  /></Button>
        <p>chevron-double-left</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="chevron-double-right-o"  /></Button>
        <p>chevron-double-right-o</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="chevron-double-right-r"  /></Button>
        <p>chevron-double-right-r</p>
      </div>

      <!-- 32 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="chevron-double-right"  /></Button>
        <p>chevron-double-right</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="chevron-double-up-o"  /></Button>
        <p>chevron-double-up-o</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="chevron-double-up-r"  /></Button>
        <p>chevron-double-up-r</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="chevron-double-up"  /></Button>
        <p>chevron-double-up</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="chevron-down-o"  /></Button>
        <p>chevron-down-o</p>
      </div>

      <!-- 33 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="chevron-down-r"  /></Button>
        <p>chevron-down-r</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="chevron-down"  /></Button>
        <p>chevron-down</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="chevron-left-o"  /></Button>
        <p>chevron-left-o</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="chevron-left-r"  /></Button>
        <p>chevron-left-r</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="chevron-left"  /></Button>
        <p>chevron-left</p>
      </div>

      <!-- 34 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="chevron-right-o"  /></Button>
        <p>chevron-right-o</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="chevron-right-r"  /></Button>
        <p>chevron-right-r</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="chevron-right"  /></Button>
        <p>chevron-right</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="chevron-up-o"  /></Button>
        <p>chevron-up-o</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="chevron-up-r"  /></Button>
        <p>chevron-up-r</p>
      </div>

      <!-- 35 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="chevron-up"  /></Button>
        <p>chevron-up</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="circleci"  /></Button>
        <p>circleci</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="clapper-board"  /></Button>
        <p>clapper-board</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="clipboard"  /></Button>
        <p>clipboard</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="close-o"  /></Button>
        <p>close-o</p>
      </div>

      <!-- 36 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="close-r"  /></Button>
        <p>close-r</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="close"  /></Button>
        <p>close</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="cloud"  /></Button>
        <p>cloud</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="code-climate"  /></Button>
        <p>code-climate</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="code-slash"  /></Button>
        <p>code-slash</p>
      </div>

      <!-- 37 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="code"  /></Button>
        <p>code</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="coffee"  /></Button>
        <p>coffee</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="collage"  /></Button>
        <p>collage</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="color-bucket"  /></Button>
        <p>color-bucket</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="color-picker"  /></Button>
        <p>color-picker</p>
      </div>

      <!-- 38 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="comedy-central"  /></Button>
        <p>comedy-central</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="comment"  /></Button>
        <p>comment</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="community"  /></Button>
        <p>community</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="components"  /></Button>
        <p>components</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="compress-left"  /></Button>
        <p>compress-left</p>
      </div>

      <!-- 39 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="compress-right"  /></Button>
        <p>compress-right</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="compress-v"  /></Button>
        <p>compress-v</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="compress"  /></Button>
        <p>compress</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="controller"  /></Button>
        <p>controller</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="copy"  /></Button>
        <p>copy</p>
      </div>

      <!-- 40 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="copyright"  /></Button>
        <p>copyright</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="corner-double-down-left"  /></Button>
        <p>corner-double-down-left</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="corner-double-down-right"  /></Button>
        <p>corner-double-down-right</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="corner-double-left-down"  /></Button>
        <p>corner-double-left-down</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="corner-double-left-up"  /></Button>
        <p>corner-double-left-up</p>
      </div>

      <!-- 41 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="corner-double-right-down"  /></Button>
        <p>corner-double-right-down</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="corner-double-right-up"  /></Button>
        <p>corner-double-right-up</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="corner-double-up-left"  /></Button>
        <p>corner-double-up-left</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="corner-double-up-right"  /></Button>
        <p>corner-double-up-right</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="corner-down-left"  /></Button>
        <p>corner-down-left</p>
      </div>

      <!-- 42 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="corner-down-right"  /></Button>
        <p>corner-down-right</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="corner-left-down"  /></Button>
        <p>corner-left-down</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="corner-left-up"  /></Button>
        <p>corner-left-up</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="corner-right-down"  /></Button>
        <p>corner-right-down</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="corner-right-up"  /></Button>
        <p>corner-right-up</p>
      </div>

      <!-- 43 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="corner-up-left"  /></Button>
        <p>corner-up-left</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="corner-up-right"  /></Button>
        <p>corner-up-right</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="credit-card"  /></Button>
        <p>credit-card</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="crop"  /></Button>
        <p>crop</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="cross"  /></Button>
        <p>cross</p>
      </div>

      <!-- 44 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="crowdfire"  /></Button>
        <p>crowdfire</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="crown"  /></Button>
        <p>crown</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="danger"  /></Button>
        <p>danger</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="dark-mode"  /></Button>
        <p>dark-mode</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="data"  /></Button>
        <p>data</p>
      </div>

      <!-- 45 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="database"  /></Button>
        <p>database</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="debug"  /></Button>
        <p>debug</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="designmodo"  /></Button>
        <p>designmodo</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="desktop"  /></Button>
        <p>desktop</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="details-less"  /></Button>
        <p>details-less</p>
      </div>

      <!-- 46 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="details-more"  /></Button>
        <p>details-more</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="dialpad"  /></Button>
        <p>dialpad</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="dice-1"  /></Button>
        <p>dice-1</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="dice-2"  /></Button>
        <p>dice-2</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="dice-3"  /></Button>
        <p>dice-3</p>
      </div>


      <!-- 47 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="dice-4"  /></Button>
        <p>dice-4</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="dice-5"  /></Button>
        <p>dice-5</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="dice-6"  /></Button>
        <p>dice-6</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="digitalocean"  /></Button>
        <p>digitalocean</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="disc"  /></Button>
        <p>disc</p>
      </div>

      <!-- 48 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="display-flex"  /></Button>
        <p>display-flex</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="display-fullwidth"  /></Button>
        <p>display-fullwidth</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="display-grid"  /></Button>
        <p>display-grid</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="display-spacing"  /></Button>
        <p>display-spacing</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="distribute-horizontal"  /></Button>
        <p>distribute-horizontal</p>
      </div>

      <!-- 49 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="distribute-vertical"  /></Button>
        <p>distribute-vertical</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="dock-bottom"  /></Button>
        <p>dock-bottom</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="dock-left"  /></Button>
        <p>dock-left</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="dock-right"  /></Button>
        <p>dock-right</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="dock-window"  /></Button>
        <p>dock-window</p>
      </div>

      <!-- 50 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="dolby"  /></Button>
        <p>dolby</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="dollar"  /></Button>
        <p>dollar</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="dribbble"  /></Button>
        <p>dribbble</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="drive"  /></Button>
        <p>drive</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="drop-invert"  /></Button>
        <p>drop-invert</p>
      </div>

      <!-- 51 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="drop-opacity"  /></Button>
        <p>drop-opacity</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="drop"  /></Button>
        <p>drop</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="duplicate"  /></Button>
        <p>duplicate</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="edit-black-point"  /></Button>
        <p>edit-black-point</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="edit-contrast"  /></Button>
        <p>edit-contrast</p>
      </div>

      <!-- 52 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="edit-exposure"  /></Button>
        <p>edit-exposure</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="edit-fade"  /></Button>
        <p>edit-fade</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="edit-flip-h"  /></Button>
        <p>edit-flip-h</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="edit-flip-v"  /></Button>
        <p>edit-flip-v</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="edit-highlight"  /></Button>
        <p>edit-highlight</p>
      </div>

      <!-- 53 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="edit-markup"  /></Button>
        <p>edit-markup</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="edit-mask"  /></Button>
        <p>edit-mask</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="edit-noise"  /></Button>
        <p>edit-noise</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="edit-shadows"  /></Button>
        <p>edit-shadows</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="edit-straight"  /></Button>
        <p>edit-straight</p>
      </div>

      <!-- 54 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="edit-unmask"  /></Button>
        <p>edit-markup</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="eject"  /></Button>
        <p>eject</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="enter"  /></Button>
        <p>enter</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="erase"  /></Button>
        <p>erase</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="ereader"  /></Button>
        <p>ereader</p>
      </div>

      <!-- 55 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="ericsson"  /></Button>
        <p>ericsson</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="ethernet"  /></Button>
        <p>ethernet</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="euro"  /></Button>
        <p>euro</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="eventbrite"  /></Button>
        <p>eventbrite</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="expand"  /></Button>
        <p>expand</p>
      </div>

      <!-- 56 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="export"  /></Button>
        <p>export</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="extension-add"  /></Button>
        <p>extension-add</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="extension-alt"  /></Button>
        <p>extension-alt</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="extension-remove"  /></Button>
        <p>extension-remove</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="extension"  /></Button>
        <p>extension</p>
      </div>

      <!-- 57 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="external"  /></Button>
        <p>external</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="eye-alt"  /></Button>
        <p>eye-alt</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="eye"  /></Button>
        <p>eye</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="facebook"  /></Button>
        <p>facebook</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="feed"  /></Button>
        <p>feed</p>
      </div>

      <!-- 58 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="figma"  /></Button>
        <p>figma</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="file-add"  /></Button>
        <p>file-add</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="file-document"  /></Button>
        <p>file-document</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="file-remove"  /></Button>
        <p>file-remove</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="file"  /></Button>
        <p>file</p>
      </div>

      <!-- 59 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="film"  /></Button>
        <p>film</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="filters"  /></Button>
        <p>filters</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="flag-alt"  /></Button>
        <p>flag-alt</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="flag"  /></Button>
        <p>flag</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="folder-add"  /></Button>
        <p>folder-add</p>
      </div>

      <!-- 60 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="folder-remove"  /></Button>
        <p>folder-remove</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="folder"  /></Button>
        <p>folder</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="font-height"  /></Button>
        <p>font-height</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="font-spacing"  /></Button>
        <p>font-spacing</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="format-bold" size="4" /></Button>
        <p>format-bold</p>
      </div>


      <!-- 61 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="format-center"  /></Button>
        <p>format-center</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="format-color"  /></Button>
        <p>format-color</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="format-heading"  /></Button>
        <p>format-heading</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="format-indent-decrease"  /></Button>
        <p>format-indent-decrease</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="format-indent-increase" /></Button>
        <p>format-indent-increase</p>
      </div>

      <!-- 62 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="format-italic"  /></Button>
        <p>format-italic</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="format-justify"  /></Button>
        <p>format-justify</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="format-left"  /></Button>
        <p>format-left</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="format-line-height"  /></Button>
        <p>format-line-height</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="format-right" /></Button>
        <p>format-right</p>
      </div>

      <!-- 63 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="format-separator"  /></Button>
        <p>format-separator</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="format-slash"  /></Button>
        <p>format-slash</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="format-strike"  /></Button>
        <p>format-strike</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="format-text"  /></Button>
        <p>format-text</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="format-underline" /></Button>
        <p>format-underline</p>
      </div>

      <!-- 64 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="format-uppercase"  /></Button>
        <p>format-uppercase</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="framer"  /></Button>
        <p>framer</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="games"  /></Button>
        <p>games</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="gender-female"  /></Button>
        <p>gender-female</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="gender-male" /></Button>
        <p>gender-male</p>
      </div>

      <!-- 65 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="ghost-character"  /></Button>
        <p>ghost-character</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="ghost"  /></Button>
        <p>ghost</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="gift"  /></Button>
        <p>gift</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="girl"  /></Button>
        <p>girl</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="git-branch" /></Button>
        <p>git-branch</p>
      </div>

      <!-- 66 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="git-commit"  /></Button>
        <p>git-commit</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="git-fork"  /></Button>
        <p>git-fork</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="git-pull"  /></Button>
        <p>git-pull</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="gitter"  /></Button>
        <p>gitter</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="glass-alt" /></Button>
        <p>glass-alt</p>
      </div>

      <!-- 67 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="glass"  /></Button>
        <p>glass</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="globe-alt"  /></Button>
        <p>globe-alt</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="globe"  /></Button>
        <p>globe</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="google-tasks"  /></Button>
        <p>google-tasks</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="google" /></Button>
        <p>google</p>
      </div>

      <!-- 68 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="gym"  /></Button>
        <p>gym</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="hashtag"  /></Button>
        <p>hashtag</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="headset"  /></Button>
        <p>headset</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="heart"  /></Button>
        <p>heart</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="hello" /></Button>
        <p>hello</p>
      </div>

      <!-- 69 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="home-alt"  /></Button>
        <p>home-alt</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="home-screen"  /></Button>
        <p>home-screen</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="home"  /></Button>
        <p>home</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="icecream"  /></Button>
        <p>icecream</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="if-design" /></Button>
        <p>if-design</p>
      </div>

      <!-- 70 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="image"  /></Button>
        <p>image</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="import"  /></Button>
        <p>import</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="inbox"  /></Button>
        <p>inbox</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="indie-hackers"  /></Button>
        <p>indie-hackers</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="infinity" /></Button>
        <p>infinity</p>
      </div>

      <!-- 71 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="info"  /></Button>
        <p>info</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="inpicture"  /></Button>
        <p>inpicture</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="insert-after-o"  /></Button>
        <p>insert-after-o</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="insert-after-r"  /></Button>
        <p>insert-after-r</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="insert-after" /></Button>
        <p>insert-after</p>
      </div>

      <!-- 72 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="insert-before-o"  /></Button>
        <p>insert-before-o</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="insert-before-r"  /></Button>
        <p>insert-before-r</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="insert-before"  /></Button>
        <p>insert-before</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="insights"  /></Button>
        <p>insights</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="instagram" /></Button>
        <p>instagram</p>
      </div>

      <!-- 73 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="internal"  /></Button>
        <p>internal</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="key"  /></Button>
        <p>key</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="keyboard"  /></Button>
        <p>keyboard</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="keyhole"  /></Button>
        <p>keyhole</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="laptop" /></Button>
        <p>laptop</p>
      </div>

      <!-- 74 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="lastpass"  /></Button>
        <p>lastpass</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="layout-grid-small"  /></Button>
        <p>layout-grid-small</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="layout-grid"  /></Button>
        <p>layout-grid</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="layout-list"  /></Button>
        <p>layout-list</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="layout-pin" /></Button>
        <p>layout-pin</p>
      </div>

      <!-- 75 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="linear"  /></Button>
        <p>linear</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="link"  /></Button>
        <p>link</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="list-tree"  /></Button>
        <p>list-tree</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="list"  /></Button>
        <p>list</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="live-photo" /></Button>
        <p>live-photo</p>
      </div>

      <!-- 76 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="loadbar-alt"  /></Button>
        <p>loadbar-alt</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="loadbar-doc"  /></Button>
        <p>loadbar-doc</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="loadbar-sound"  /></Button>
        <p>loadbar-sound</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="loadbar"  /></Button>
        <p>loadbar</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="lock-unlock" /></Button>
        <p>lock-unlock</p>
      </div>

      <!-- 77 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="lock"  /></Button>
        <p>lock</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="log-in"  /></Button>
        <p>log-in</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="log-off"  /></Button>
        <p>log-off</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="log-out"  /></Button>
        <p>log-out</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="loupe" /></Button>
        <p>loupe</p>
      </div>

      <!-- 78 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="magnet"  /></Button>
        <p>magnet</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="mail-forward"  /></Button>
        <p>mail-forward</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="mail-open"  /></Button>
        <p>mail-open</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="mail-reply"  /></Button>
        <p>mail-reply</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="mail" /></Button>
        <p>mail</p>
      </div>

      <!-- 79 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="math-divide"  /></Button>
        <p>math-divide</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="math-equal"  /></Button>
        <p>math-equal</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="math-minus"  /></Button>
        <p>math-minus</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="math-percent"  /></Button>
        <p>math-percent</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="math-plus" /></Button>
        <p>math-plus</p>
      </div>

      <!-- 80 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="maximize-alt"  /></Button>
        <p>maximize-alt</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="maximize"  /></Button>
        <p>maximize</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="maze"  /></Button>
        <p>maze</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="media-live"  /></Button>
        <p>media-live</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="media-podcast" /></Button>
        <p>media-podcast</p>
      </div>

      <!-- 81 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="menu-boxed"  /></Button>
        <p>menu-boxed</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="menu-cake"  /></Button>
        <p>menu-cake</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="menu-cheese"  /></Button>
        <p>menu-cheese</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="menu-grid-o"  /></Button>
        <p>menu-grid-o</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="menu-grid-r" /></Button>
        <p>menu-grid-r</p>
      </div>

      <!-- 82 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="menu-hotdog"  /></Button>
        <p>menu-hotdog</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="menu-left-alt"  /></Button>
        <p>menu-left-alt</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="menu-left"  /></Button>
        <p>menu-left</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="menu-motion"  /></Button>
        <p>menu-motion</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="menu-oreos" /></Button>
        <p>menu-oreos</p>
      </div>

      <!-- 83 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="menu-right-alt"  /></Button>
        <p>menu-right-alt</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="menu-right"  /></Button>
        <p>menu-right</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="menu-round"  /></Button>
        <p>menu-round</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="menu"  /></Button>
        <p>menu</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="merge-horizontal" /></Button>
        <p>merge-horizontal</p>
      </div>

      <!-- 84 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="merge-vertical"  /></Button>
        <p>merge-vertical</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="mic"  /></Button>
        <p>mic</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="microbit"  /></Button>
        <p>microbit</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="microsoft"  /></Button>
        <p>microsoft</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="mini-player" /></Button>
        <p>mini-player</p>
      </div>

      <!-- 85 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="minimize-alt"  /></Button>
        <p>minimize-alt</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="minimize"  /></Button>
        <p>minimize</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="modem"  /></Button>
        <p>modem</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="monday"  /></Button>
        <p>monday</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="moon" /></Button>
        <p>moon</p>
      </div>

      <!-- 86 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="more-alt"  /></Button>
        <p>more-alt</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="more-o"  /></Button>
        <p>more-o</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="more-r"  /></Button>
        <p>more-r</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="more-vertical-alt"  /></Button>
        <p>more-vertical-alt</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="more-vertical-o" /></Button>
        <p>more-vertical-o</p>
      </div>

      <!-- 87 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="more-vertical-r"  /></Button>
        <p>more-vertical-r</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="more-vertical"  /></Button>
        <p>more-vertical</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="more"  /></Button>
        <p>more</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="mouse"  /></Button>
        <p>mouse</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="move-down" /></Button>
        <p>move-down</p>
      </div>

      <!-- 88 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="move-left"  /></Button>
        <p>move-left</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="move-right"  /></Button>
        <p>move-right</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="move-task"  /></Button>
        <p>move-task</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="move-up"  /></Button>
        <p>move-up</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="music-note" /></Button>
        <p>music-note</p>
      </div>

      <!-- 89 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="music-speaker"  /></Button>
        <p>music-speaker</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="music"  /></Button>
        <p>music</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="nametag"  /></Button>
        <p>nametag</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="notes"  /></Button>
        <p>notes</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="notifications" /></Button>
        <p>notifications</p>
      </div>

      <!-- 90 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="npm"  /></Button>
        <p>npm</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="oculus"  /></Button>
        <p>oculus</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="open-collective"  /></Button>
        <p>open-collective</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="options"  /></Button>
        <p>options</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="organisation" /></Button>
        <p>organisation</p>
      </div>

      <!-- 91 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="overflow"  /></Button>
        <p>overflow</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="pacman"  /></Button>
        <p>pacman</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="password"  /></Button>
        <p>password</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="path-back"  /></Button>
        <p>path-back</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="path-crop" /></Button>
        <p>path-crop</p>
      </div>

      <!-- 92 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="path-divide"  /></Button>
        <p>path-divide</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="path-exclude"  /></Button>
        <p>path-exclude</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="path-front"  /></Button>
        <p>path-front</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="path-intersect"  /></Button>
        <p>path-intersect</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="path-outline" /></Button>
        <p>path-outline</p>
      </div>

      <!-- 93 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="path-trim"  /></Button>
        <p>path-trim</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="path-unite"  /></Button>
        <p>path-unite</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="patreon"  /></Button>
        <p>patreon</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="paypal"  /></Button>
        <p>paypal</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="pen" /></Button>
        <p>pen</p>
      </div>

      <!-- 94 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="pentagon-bottom-left"  /></Button>
        <p>pentagon-bottom-left</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="pentagon-bottom-right"  /></Button>
        <p>pentagon-bottom-right</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="pentagon-down"  /></Button>
        <p>pentagon-down</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="pentagon-left"  /></Button>
        <p>pentagon-left</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="pentagon-right" /></Button>
        <p>pentagon-right</p>
      </div>

      <!-- 95 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="pentagon-top-left"  /></Button>
        <p>pentagon-top-left</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="pentagon-top-right"  /></Button>
        <p>pentagon-top-right</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="pentagon-up"  /></Button>
        <p>pentagon-up</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="performance"  /></Button>
        <p>performance</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="pexels" /></Button>
        <p>pexels</p>
      </div>

      <!-- 96 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="phone"  /></Button>
        <p>phone</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="photoscan"  /></Button>
        <p>photoscan</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="piano"  /></Button>
        <p>piano</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="pill"  /></Button>
        <p>pill</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="pin-alt" /></Button>
        <p>pin-alt</p>
      </div>

      <!-- 97 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="pin-bottom"  /></Button>
        <p>pin-bottom</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="pin-top"  /></Button>
        <p>pin-top</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="pin"  /></Button>
        <p>pin</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="play-backwards"  /></Button>
        <p>play-backwards</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="play-button-o" /></Button>
        <p>play-button-o</p>
      </div>

      <!-- 98 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="play-button-r"  /></Button>
        <p>play-button-r</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="play-button"  /></Button>
        <p>play-button</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="play-forwards"  /></Button>
        <p>play-forwards</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="play-list-add"  /></Button>
        <p>play-list-add</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="play-list-check" /></Button>
        <p>play-list-check</p>
      </div>

      <!-- 99 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="play-list-remove"  /></Button>
        <p>play-list-remove</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="play-list-search"  /></Button>
        <p>play-list-search</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="play-list"  /></Button>
        <p>play-list</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="play-pause-o"  /></Button>
        <p>play-pause-o</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="play-pause-r" /></Button>
        <p>play-pause-r</p>
      </div>

      <!-- 100 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="play-pause"  /></Button>
        <p>play-pause</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="play-stop-o"  /></Button>
        <p>play-stop-o</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="play-stop-r"  /></Button>
        <p>play-stop-r</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="play-stop"  /></Button>
        <p>play-stop</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="play-track-next-o" /></Button>
        <p>play-track-next-o</p>
      </div>

      <!-- 101 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="play-track-next-r"  /></Button>
        <p>play-track-next-r</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="play-track-next"  /></Button>
        <p>play-track-next</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="play-track-prev-o"  /></Button>
        <p>play-track-prev-o</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="play-track-prev-r"  /></Button>
        <p>play-track-prev-r</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="play-track-prev" /></Button>
        <p>play-track-prev</p>
      </div>

      <!-- 102 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="plug"  /></Button>
        <p>plug</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="pocket"  /></Button>
        <p>pocket</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="pokemon"  /></Button>
        <p>pokemon</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="polaroid"  /></Button>
        <p>polaroid</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="poll" /></Button>
        <p>poll</p>
      </div>

      <!-- 103 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="presentation"  /></Button>
        <p>presentation</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="printer"  /></Button>
        <p>printer</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="product-hunt"  /></Button>
        <p>product-hunt</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="profile"  /></Button>
        <p>profile</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="pull-clear" /></Button>
        <p>pull-clear</p>
      </div>

      <!-- 104 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="push-chevron-down-o"  /></Button>
        <p>push-chevron-down-o</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="push-chevron-down-r"  /></Button>
        <p>push-chevron-down-r</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="push-chevron-down"  /></Button>
        <p>push-chevron-down</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="push-chevron-left-o"  /></Button>
        <p>push-chevron-left-o</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="push-chevron-left-r" /></Button>
        <p>push-chevron-left-r</p>
      </div>

      <!-- 105 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="push-chevron-left"  /></Button>
        <p>push-chevron-left</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="push-chevron-right-o"  /></Button>
        <p>push-chevron-right-o</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="push-chevron-right-r"  /></Button>
        <p>push-chevron-right-r</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="push-chevron-right"  /></Button>
        <p>push-chevron-right</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="push-chevron-up-o" /></Button>
        <p>push-chevron-up-o</p>
      </div>

      <!-- 106 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="push-chevron-up-r"  /></Button>
        <p>push-chevron-up-r</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="push-chevron-up"  /></Button>
        <p>push-chevron-up</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="push-down"  /></Button>
        <p>push-down</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="push-left"  /></Button>
        <p>push-left</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="push-right" /></Button>
        <p>push-right</p>
      </div>

      <!-- 107 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="push-up"  /></Button>
        <p>push-up</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="qr"  /></Button>
        <p>qr</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="quote-o"  /></Button>
        <p>quote-o</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="quote"  /></Button>
        <p>quote</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="radio-check" /></Button>
        <p>radio-check</p>
      </div>

      <!-- 108 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="radio-checked"  /></Button>
        <p>radio-checked</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="ratio"  /></Button>
        <p>ratio</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="read"  /></Button>
        <p>read</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="readme"  /></Button>
        <p>readme</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="record" /></Button>
        <p>record</p>
      </div>

      <!-- 109 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="redo"  /></Button>
        <p>redo</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="remote"  /></Button>
        <p>remote</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="remove-r"  /></Button>
        <p>remove-r</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="remove"  /></Button>
        <p>remove</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="rename" /></Button>
        <p>rename</p>
      </div>

      <!-- 110 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="reorder"  /></Button>
        <p>reorder</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="repeat"  /></Button>
        <p>repeat</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="ring"  /></Button>
        <p>ring</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="row-first"  /></Button>
        <p>row-first</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="row-last" /></Button>
        <p>row-last</p>
      </div>

      <!-- 111 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="ruler"  /></Button>
        <p>ruler</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="sand-clock"  /></Button>
        <p>sand-clock</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="scan"  /></Button>
        <p>scan</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="screen-mirror"  /></Button>
        <p>screen-mirror</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="screen-shot" /></Button>
        <p>screen-shot</p>
      </div>

      <!-- 112 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="screen-wide"  /></Button>
        <p>screen-wide</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="screen"  /></Button>
        <p>screen</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="scroll-h"  /></Button>
        <p>scroll-h</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="scroll-v"  /></Button>
        <p>scroll-v</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="search-found" /></Button>
        <p>search-found</p>
      </div>

      <!-- 113 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="search-loading"  /></Button>
        <p>search-loading</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="search"  /></Button>
        <p>search</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="select-o"  /></Button>
        <p>select-o</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="select-r"  /></Button>
        <p>select-r</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="select" /></Button>
        <p>select</p>
      </div>

      <!-- 114 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="server"  /></Button>
        <p>server</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="serverless"  /></Button>
        <p>serverless</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="shape-circle"  /></Button>
        <p>shape-circle</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="shape-half-circle"  /></Button>
        <p>shape-half-circle</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="shape-hexagon" /></Button>
        <p>shape-hexagon</p>
      </div>

      <!-- 115 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="shape-rhombus"  /></Button>
        <p>shape-rhombus</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="shape-square"  /></Button>
        <p>shape-square</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="shape-triangle"  /></Button>
        <p>shape-triangle</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="shape-zigzag"  /></Button>
        <p>shape-zigzag</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="share" /></Button>
        <p>share</p>
      </div>

      <!-- 116 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="shield"  /></Button>
        <p>shield</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="shopping-bag"  /></Button>
        <p>shopping-bag</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="shopping-cart"  /></Button>
        <p>shopping-cart</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="shortcut"  /></Button>
        <p>shortcut</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="shutterstock" /></Button>
        <p>shutterstock</p>
      </div>

      <!-- 117 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="sidebar-open"  /></Button>
        <p>sidebar-open</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="sidebar-right"  /></Button>
        <p>sidebar-right</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="sidebar"  /></Button>
        <p>sidebar</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="signal"  /></Button>
        <p>signal</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="size" /></Button>
        <p>size</p>
      </div>

      <!-- 118 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="sketch"  /></Button>
        <p>sketch</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="slack"  /></Button>
        <p>slack</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="sleep"  /></Button>
        <p>sleep</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="smart-home-boiler"  /></Button>
        <p>smart-home-boiler</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="smart-home-cooker" /></Button>
        <p>smart-home-cooker</p>
      </div>

      <!-- 119 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="smart-home-heat"  /></Button>
        <p>smart-home-heat</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="smart-home-light"  /></Button>
        <p>smart-home-light</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="smart-home-refrigerator"  /></Button>
        <p>smart-home-refrigerator</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="smart-home-wash-machine"  /></Button>
        <p>smart-home-wash-machine</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="smartphone-chip" /></Button>
        <p>smartphone-chip</p>
      </div>


      <!-- 120 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="smartphone-ram"  /></Button>
        <p>smartphone-ram</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="smartphone-shake"  /></Button>
        <p>smartphone-shake</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="smartphone"  /></Button>
        <p>smartphone</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="smile-mouth-open"  /></Button>
        <p>smile-mouth-open</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="smile-neutral" /></Button>
        <p>smile-neutral</p>
      </div>


      <!-- 121 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="smile-no-mouth"  /></Button>
        <p>smile-no-mouth</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="smile-none"  /></Button>
        <p>smile-none</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="smile-sad"  /></Button>
        <p>smile-sad</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="smile-upside"  /></Button>
        <p>smile-upside</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="smile" /></Button>
        <p>smile</p>
      </div>

      <!-- 122 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="software-download"  /></Button>
        <p>software-download</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="software-upload"  /></Button>
        <p>software-upload</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="sort-az"  /></Button>
        <p>sort-az</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="sort-za"  /></Button>
        <p>sort-za</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="space-between-v" /></Button>
        <p>space-between-v</p>
      </div>

      <!-- 123 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="space-between"  /></Button>
        <p>space-between</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="spectrum"  /></Button>
        <p>spectrum</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="spinner-alt"  /></Button>
        <p>spinner-alt</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="spinner-two-alt"  /></Button>
        <p>spinner-two-alt</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="spinner-two" /></Button>
        <p>spinner-two</p>
      </div>

      <!-- 124 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="spinner"  /></Button>
        <p>spinner</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="square"  /></Button>
        <p>square</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="stack"  /></Button>
        <p>stack</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="stark"  /></Button>
        <p>stark</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="stopwatch" /></Button>
        <p>stopwatch</p>
      </div>

      <!-- 125 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="stories"  /></Button>
        <p>stories</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="studio"  /></Button>
        <p>studio</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="style"  /></Button>
        <p>style</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="sun"  /></Button>
        <p>sun</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="support" /></Button>
        <p>support</p>
      </div>

      <!-- 126 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="swap-vertical"  /></Button>
        <p>swap-vertical</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="swap"  /></Button>
        <p>swap</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="sweden"  /></Button>
        <p>sweden</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="swiss"  /></Button>
        <p>swiss</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="sync" /></Button>
        <p>sync</p>
      </div>

      <!-- 127 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="tab"  /></Button>
        <p>tab</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="tag"  /></Button>
        <p>tag</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="tally"  /></Button>
        <p>tally</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="tap-double"  /></Button>
        <p>tap-double</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="tap-single" /></Button>
        <p>tap-single</p>
      </div>

      <!-- 128 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="template"  /></Button>
        <p>template</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="tennis"  /></Button>
        <p>tennis</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="terminal"  /></Button>
        <p>terminal</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="terrain"  /></Button>
        <p>terrain</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="thermometer" /></Button>
        <p>thermometer</p>
      </div>

      <!-- 129 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="thermostat"  /></Button>
        <p>thermostat</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="tikcode"  /></Button>
        <p>tikcode</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="time"  /></Button>
        <p>time</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="timelapse"  /></Button>
        <p>timelapse</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="timer" /></Button>
        <p>timer</p>
      </div>

      <!-- 130 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="today"  /></Button>
        <p>today</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="toggle-off"  /></Button>
        <p>toggle-off</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="toggle-on"  /></Button>
        <p>toggle-on</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="toggle-square-off"  /></Button>
        <p>toggle-square-off</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="toggle-square" /></Button>
        <p>toggle-square</p>
      </div>


      <!-- 131 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="toolbar-bottom"  /></Button>
        <p>toolbar-bottom</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="toolbar-left"  /></Button>
        <p>toolbar-left</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="toolbar-right"  /></Button>
        <p>toolbar-right</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="toolbar-top"  /></Button>
        <p>toolbar-top</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="toolbox" /></Button>
        <p>toolbox</p>
      </div>

      <!-- 132 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="touchpad"  /></Button>
        <p>touchpad</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="track"  /></Button>
        <p>track</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="transcript"  /></Button>
        <p>transcript</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="trash-empty"  /></Button>
        <p>trash-empty</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="trash" /></Button>
        <p>trash</p>
      </div>


      <!-- 133 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="tree"  /></Button>
        <p>tree</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="trees"  /></Button>
        <p>trees</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="trello"  /></Button>
        <p>trello</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="trending-down"  /></Button>
        <p>trending-down</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="trending" /></Button>
        <p>trending</p>
      </div>

      <!-- 134 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="trophy"  /></Button>
        <p>trophy</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="tv"  /></Button>
        <p>tv</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="twilio"  /></Button>
        <p>twilio</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="twitter"  /></Button>
        <p>twitter</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="ui-kit" /></Button>
        <p>ui-kit</p>
      </div>

      <!-- 135 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="umbrella"  /></Button>
        <p>umbrella</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="unavailable"  /></Button>
        <p>unavailable</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="unblock"  /></Button>
        <p>unblock</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="undo"  /></Button>
        <p>undo</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="unfold" /></Button>
        <p>unfold</p>
      </div>

      <!-- 136 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="unsplash"  /></Button>
        <p>unsplash</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="usb-c"  /></Button>
        <p>usb-c</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="usb"  /></Button>
        <p>usb</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="user-add"  /></Button>
        <p>user-add</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="user-list" /></Button>
        <p>user-list</p>
      </div>

      <!-- 137 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="user-remove"  /></Button>
        <p>user-remove</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="user"  /></Button>
        <p>user</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="userlane"  /></Button>
        <p>userlane</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="view-cols"  /></Button>
        <p>view-cols</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="view-comfortable" /></Button>
        <p>view-comfortable</p>
      </div>

      <!-- 138 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="view-day"  /></Button>
        <p>view-day</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="view-grid"  /></Button>
        <p>view-grid</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="view-list"  /></Button>
        <p>view-list</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="view-month"  /></Button>
        <p>view-month</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="view-split" /></Button>
        <p>view-split</p>
      </div>

      <!-- 139 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="vinyl"  /></Button>
        <p>vinyl</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="voicemail-o"  /></Button>
        <p>voicemail-o</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="voicemail-r"  /></Button>
        <p>voicemail-r</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="voicemail"  /></Button>
        <p>voicemail</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="volume" /></Button>
        <p>volume</p>
      </div>

      <!-- 140 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="webcam"  /></Button>
        <p>webcam</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="website"  /></Button>
        <p>website</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="windows"  /></Button>
        <p>windows</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="work-alt"  /></Button>
        <p>work-alt</p>
      </div>
      <div>
        <Button class="btn btn-outline"><Cssgg name="yinyang" /></Button>
        <p>yinyang</p>
      </div>

      <!-- 141 -->
      <div>
        <Button class="btn    btn-outline"><Cssgg name="youtube"  /></Button>
        <p>youtube</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Cssgg name="zeit"  /></Button>
        <p>zeit</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="zoom-in"  /></Button>
        <p>zoom-in</p>
      </div>
      <div>
        <Button class="btn btn-outline "><Cssgg name="zoom-out"  /></Button>
        <p>zoom-out</p>
      </div>


    </div>
    """

  end

end