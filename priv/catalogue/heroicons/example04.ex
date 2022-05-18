defmodule SelphiDaisy.Heroicons.Example04 do
  @moduledoc """
  Heroicons svg icon  solid 图标.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Heroicons,
      height: "3200px",
      title: "03-heroicons solid",
      direction: "vertical"


  alias SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <div class="grid grid-cols-7 gap-4 ">
      <!-- 1 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="academic-cap"   type="fill" /></Button>
        <p>academic-cap</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="adjustments"    type="fill" /></Button>
        <p>adjustments</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="annotation"    type="fill" /></Button>
        <p>annotation</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="archive"    type="fill" /></Button>
        <p>archive</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="arrow-circle-down"  type="fill" /></Button>
        <p>arrow-circle-down</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="arrow-circle-left"   type="fill" /></Button>
        <p>arrow-circle-left</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="arrow-circle-right"   type="fill" /></Button>
        <p>arrow-circle-right</p>
      </div>

      <!-- 2 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="arrow-circle-up"   type="fill" /></Button>
        <p>arrow-circle-up</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="arrow-down"    type="fill" /></Button>
        <p>arrow-down</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="arrow-left"    type="fill" /></Button>
        <p>arrow-left</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="arrow-narrow-down"    type="fill" /></Button>
        <p>arrow-narrow-down</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="arrow-narrow-left"  type="fill" /></Button>
        <p>arrow-narrow-left</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="arrow-narrow-right"   type="fill" /></Button>
        <p>arrow-narrow-right</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="arrow-narrow-up"   type="fill" /></Button>
        <p>arrow-narrow-up</p>
      </div>

      <!-- 3 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="arrow-right"   type="fill" /></Button>
        <p>arrow-right</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="arrows-expand"    type="fill" /></Button>
        <p>arrows-expand</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="arrow-up"    type="fill" /></Button>
        <p>arrow-up</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="at-symbol"    type="fill" /></Button>
        <p>at-symbol</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="backspace"  type="fill" /></Button>
        <p>backspace</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="badge-check"   type="fill" /></Button>
        <p>badge-check</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="ban"   type="fill" /></Button>
        <p>ban</p>
      </div>


      <!-- 4 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="beaker"   type="fill" /></Button>
        <p>beaker</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="bell"    type="fill" /></Button>
        <p>bell</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="bookmark"    type="fill" /></Button>
        <p>bookmark</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="bookmark-alt"    type="fill" /></Button>
        <p>bookmark-alt</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="book-open"  type="fill" /></Button>
        <p>book-open</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="briefcase"   type="fill" /></Button>
        <p>briefcase</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="cake"   type="fill" /></Button>
        <p>cake</p>
      </div>

      <!-- 5 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="calculator"   type="fill" /></Button>
        <p>calculator</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="calendar"    type="fill" /></Button>
        <p>calendar</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="camera"    type="fill" /></Button>
        <p>camera</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="cash"    type="fill" /></Button>
        <p>cash</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="chart-bar"  type="fill" /></Button>
        <p>chart-bar</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="chart-pie"   type="fill" /></Button>
        <p>chart-pie</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="chart-square-bar"   type="fill" /></Button>
        <p>chart-square-bar</p>
      </div>

      <!-- 6 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="chat"   type="fill" /></Button>
        <p>chat</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="chat-alt"    type="fill" /></Button>
        <p>chat-alt</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="chat-alt2"    type="fill" /></Button>
        <p>chat-alt2</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="check"    type="fill" /></Button>
        <p>check</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="check-circle"  type="fill" /></Button>
        <p>check-circle</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="chevron-double-down"   type="fill" /></Button>
        <p>chevron-double-down</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="chevron-double-left"   type="fill" /></Button>
        <p>chevron-double-left</p>
      </div>

      <!-- 7 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="chevron-double-right"   type="fill" /></Button>
        <p>chevron-double-right</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="chevron-double-up"    type="fill" /></Button>
        <p>chevron-double-up</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="chevron-down"    type="fill" /></Button>
        <p>chevron-down</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="chevron-left"    type="fill" /></Button>
        <p>chevron-left</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="chevron-right"  type="fill" /></Button>
        <p>chevron-right</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="chevron-up"   type="fill" /></Button>
        <p>chevron-up</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="chip"   type="fill" /></Button>
        <p>chip</p>
      </div>

      <!-- 8 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="clipboard"   type="fill" /></Button>
        <p>clipboard</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="clipboard-check"    type="fill" /></Button>
        <p>clipboard-check</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="clipboard-copy"    type="fill" /></Button>
        <p>clipboard-copy</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="clipboard-list"    type="fill" /></Button>
        <p>clipboard-list</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="clock"  type="fill" /></Button>
        <p>clock</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="cloud"   type="fill" /></Button>
        <p>cloud</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="cloud-download"   type="fill" /></Button>
        <p>cloud-download</p>
      </div>

      <!-- 9 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="cloud-upload"   type="fill" /></Button>
        <p>cloud-upload</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="code"    type="fill" /></Button>
        <p>code</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="cog"    type="fill" /></Button>
        <p>cog</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="collection"    type="fill" /></Button>
        <p>collection</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="color-swatch"  type="fill" /></Button>
        <p>color-swatch</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="credit-card"   type="fill" /></Button>
        <p>credit-card</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="cube"   type="fill" /></Button>
        <p>cube</p>
      </div>

      <!-- 10 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="cube-transparent"   type="fill" /></Button>
        <p>cube-transparent</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="currency-bangladeshi"    type="fill" /></Button>
        <p>currency-bangladeshi</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="currency-dollar"    type="fill" /></Button>
        <p>currency-dollar</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="currency-euro"    type="fill" /></Button>
        <p>currency-euro</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="currency-pound"  type="fill" /></Button>
        <p>currency-pound</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="currency-rupee"   type="fill" /></Button>
        <p>currency-rupee</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="currency-yen"   type="fill" /></Button>
        <p>currency-yen</p>
      </div>

      <!-- 11 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="cursor-click"   type="fill" /></Button>
        <p>cursor-click</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="database"    type="fill" /></Button>
        <p>database</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="desktop-computer"    type="fill" /></Button>
        <p>desktop-computer</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="device-mobile"    type="fill" /></Button>
        <p>device-mobile</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="device-tablet"  type="fill" /></Button>
        <p>device-tablet</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="document"   type="fill" /></Button>
        <p>document</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="document-add"   type="fill" /></Button>
        <p>document-add</p>
      </div>

      <!-- 12 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="document-download"   type="fill" /></Button>
        <p>document-download</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="document-duplicate"    type="fill" /></Button>
        <p>document-duplicate</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="document-remove"    type="fill" /></Button>
        <p>document-remove</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="document-report"    type="fill" /></Button>
        <p>document-report</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="document-search"  type="fill" /></Button>
        <p>document-search</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="document-text"   type="fill" /></Button>
        <p>document-text</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="dots-circle-horizontal"   type="fill" /></Button>
        <p>dots-circle-horizontal</p>
      </div>

      <!-- 13 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="dots-horizontal"   type="fill" /></Button>
        <p>dots-horizontal</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="dots-vertical"    type="fill" /></Button>
        <p>dots-vertical</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="download"    type="fill" /></Button>
        <p>download</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="duplicate"    type="fill" /></Button>
        <p>duplicate</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="emoji-happy"  type="fill" /></Button>
        <p>emoji-happy</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="emoji-sad"   type="fill" /></Button>
        <p>emoji-sad</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="exclamation"   type="fill" /></Button>
        <p>exclamation</p>
      </div>

      <!-- 14 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="exclamation-circle"   type="fill" /></Button>
        <p>exclamation-circle</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="external-link"    type="fill" /></Button>
        <p>external-link</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="eye"    type="fill" /></Button>
        <p>eye</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="eye-off"    type="fill" /></Button>
        <p>eye-off</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="fast-forward"  type="fill" /></Button>
        <p>fast-forward</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="film"   type="fill" /></Button>
        <p>film</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="filter"   type="fill" /></Button>
        <p>filter</p>
      </div>

      <!-- 15 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="finger-print"   type="fill" /></Button>
        <p>finger-print</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="fire"    type="fill" /></Button>
        <p>fire</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="flag"    type="fill" /></Button>
        <p>flag</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="folder"    type="fill" /></Button>
        <p>folder</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="folder-add"  type="fill" /></Button>
        <p>folder-add</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="folder-download"   type="fill" /></Button>
        <p>folder-download</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="folder-open"   type="fill" /></Button>
        <p>folder-open</p>
      </div>

      <!-- 16 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="folder-remove"   type="fill" /></Button>
        <p>folder-remove</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="gift"    type="fill" /></Button>
        <p>gift</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="globe"    type="fill" /></Button>
        <p>globe</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="globe-alt"    type="fill" /></Button>
        <p>globe-alt</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="hand"  type="fill" /></Button>
        <p>hand</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="hashtag"   type="fill" /></Button>
        <p>hashtag</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="heart"   type="fill" /></Button>
        <p>heart</p>
      </div>

      <!-- 17 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="home"   type="fill" /></Button>
        <p>home</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="identification"    type="fill" /></Button>
        <p>identification</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="inbox"    type="fill" /></Button>
        <p>inbox</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="inbox-in"    type="fill" /></Button>
        <p>inbox-in</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="information-circle"  type="fill" /></Button>
        <p>information-circle</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="key"   type="fill" /></Button>
        <p>key</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="library"   type="fill" /></Button>
        <p>library</p>
      </div>

      <!-- 18 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="light-bulb"   type="fill" /></Button>
        <p>light-bulb</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="lightning-bolt"    type="fill" /></Button>
        <p>lightning-bolt</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="link"    type="fill" /></Button>
        <p>link</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="location-marker"    type="fill" /></Button>
        <p>location-marker</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="lock-closed"  type="fill" /></Button>
        <p>lock-closed</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="lock-open"   type="fill" /></Button>
        <p>lock-open</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="login"   type="fill" /></Button>
        <p>login</p>
      </div>

      <!-- 19 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="logout"   type="fill" /></Button>
        <p>logout</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="mail"    type="fill" /></Button>
        <p>mail</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="mail-open"    type="fill" /></Button>
        <p>mail-open</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="map"    type="fill" /></Button>
        <p>map</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="menu"  type="fill" /></Button>
        <p>menu</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="menu-alt1"   type="fill" /></Button>
        <p>menu-alt1</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="menu-alt2"   type="fill" /></Button>
        <p>menu-alt2</p>
      </div>

      <!-- 20 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="menu-alt3"   type="fill" /></Button>
        <p>menu-alt3</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="menu-alt4"    type="fill" /></Button>
        <p>menu-alt4</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="microphone"    type="fill" /></Button>
        <p>microphone</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="minus"    type="fill" /></Button>
        <p>minus</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="minus-circle"  type="fill" /></Button>
        <p>minus-circle</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="moon"   type="fill" /></Button>
        <p>moon</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="music-note"   type="fill" /></Button>
        <p>music-note</p>
      </div>

      <!-- 21 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="newspaper"   type="fill" /></Button>
        <p>newspaper</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="office-building"    type="fill" /></Button>
        <p>office-building</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="paper-airplane"    type="fill" /></Button>
        <p>paper-airplane</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="paper-clip"    type="fill" /></Button>
        <p>paper-clip</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="pause"  type="fill" /></Button>
        <p>pause</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="pencil"   type="fill" /></Button>
        <p>pencil</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="pencil-alt"   type="fill" /></Button>
        <p>pencil-alt</p>
      </div>

      <!-- 22 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="phone"   type="fill" /></Button>
        <p>phone</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="phone-incoming"    type="fill" /></Button>
        <p>phone-incoming</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="phone-missed-call"    type="fill" /></Button>
        <p>phone-missed-call</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="phone-outgoing"    type="fill" /></Button>
        <p>phone-outgoing</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="photograph"  type="fill" /></Button>
        <p>photograph</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="play"   type="fill" /></Button>
        <p>play</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="plus"   type="fill" /></Button>
        <p>plus</p>
      </div>

      <!-- 23 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="plus-circle"   type="fill" /></Button>
        <p>plus-circle</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="presentation-chart-bar"    type="fill" /></Button>
        <p>presentation-chart-bar</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="presentation-chart-line"    type="fill" /></Button>
        <p>presentation-chart-line</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="printer"    type="fill" /></Button>
        <p>printer</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="puzzle"  type="fill" /></Button>
        <p>puzzle</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="qrcode"   type="fill" /></Button>
        <p>qrcode</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="question-mark-circle"   type="fill" /></Button>
        <p>question-mark-circle</p>
      </div>

      <!-- 24 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="receipt-refund"   type="fill" /></Button>
        <p>receipt-refund</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="receipt-tax"    type="fill" /></Button>
        <p>receipt-tax</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="refresh"    type="fill" /></Button>
        <p>refresh</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="reply"    type="fill" /></Button>
        <p>reply</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="rewind"  type="fill" /></Button>
        <p>rewind</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="rss"   type="fill" /></Button>
        <p>rss</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="save"   type="fill" /></Button>
        <p>save</p>
      </div>

      <!-- 25 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="save-as"   type="fill" /></Button>
        <p>save-as</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="scale"    type="fill" /></Button>
        <p>scale</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="scissors"    type="fill" /></Button>
        <p>scissors</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="search"    type="fill" /></Button>
        <p>search</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="search-circle"  type="fill" /></Button>
        <p>search-circle</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="selector"   type="fill" /></Button>
        <p>selector</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="server"   type="fill" /></Button>
        <p>server</p>
      </div>

      <!-- 26 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="share"   type="fill" /></Button>
        <p>share</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="shield-check"    type="fill" /></Button>
        <p>shield-check</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="shield-exclamation"    type="fill" /></Button>
        <p>shield-exclamation</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="shopping-bag"    type="fill" /></Button>
        <p>shopping-bag</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="shopping-cart"  type="fill" /></Button>
        <p>shopping-cart</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="sort-ascending"   type="fill" /></Button>
        <p>sort-ascending</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="sort-descending"   type="fill" /></Button>
        <p>sort-descending</p>
      </div>

      <!-- 27 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="sparkles"   type="fill" /></Button>
        <p>sparkles</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="speakerphone"    type="fill" /></Button>
        <p>speakerphone</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="star"    type="fill" /></Button>
        <p>star</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="status-offline"    type="fill" /></Button>
        <p>status-offline</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="status-online"  type="fill" /></Button>
        <p>status-online</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="stop"   type="fill" /></Button>
        <p>stop</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="sun"   type="fill" /></Button>
        <p>sun</p>
      </div>

      <!-- 28 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="support"   type="fill" /></Button>
        <p>support</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="switch-horizontal"    type="fill" /></Button>
        <p>switch-horizontal</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="switch-vertical"    type="fill" /></Button>
        <p>switch-vertical</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="table"    type="fill" /></Button>
        <p>table</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="tag"  type="fill" /></Button>
        <p>tag</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="template"   type="fill" /></Button>
        <p>template</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="terminal"   type="fill" /></Button>
        <p>terminal</p>
      </div>

      <!-- 29 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="thumb-down"   type="fill" /></Button>
        <p>thumb-down</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="thumb-up"    type="fill" /></Button>
        <p>thumb-up</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="ticket"    type="fill" /></Button>
        <p>ticket</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="translate"    type="fill" /></Button>
        <p>translate</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="trash"  type="fill" /></Button>
        <p>trash</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="trending-down"   type="fill" /></Button>
        <p>trending-down</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="trending-up"   type="fill" /></Button>
        <p>trending-up</p>
      </div>

      <!-- 30 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="truck"   type="fill" /></Button>
        <p>truck</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="upload"    type="fill" /></Button>
        <p>upload</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="user"    type="fill" /></Button>
        <p>user</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="user-add"    type="fill" /></Button>
        <p>user-add</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="user-circle"  type="fill" /></Button>
        <p>user-circle</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="user-group"   type="fill" /></Button>
        <p>user-group</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="user-remove"   type="fill" /></Button>
        <p>user-remove</p>
      </div>

      <!-- 31 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="users"   type="fill" /></Button>
        <p>users</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="variable"    type="fill" /></Button>
        <p>variable</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="video-camera"    type="fill" /></Button>
        <p>video-camera</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="view-boards"    type="fill" /></Button>
        <p>view-boards</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="view-grid"  type="fill" /></Button>
        <p>view-grid</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="view-grid-add"   type="fill" /></Button>
        <p>view-grid-add</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="view-list"   type="fill" /></Button>
        <p>view-list</p>
      </div>

      <!-- 32 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="volume-off"   type="fill" /></Button>
        <p>volume-off</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="volume-up"    type="fill" /></Button>
        <p>volume-up</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="wifi"    type="fill" /></Button>
        <p>wifi</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="x"    type="fill" /></Button>
        <p>x</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="x-circle"  type="fill" /></Button>
        <p>x-circle</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="zoom-in"   type="fill" /></Button>
        <p>zoom-in</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="zoom-out"   type="fill" /></Button>
        <p>zoom-out</p>
      </div>


    </div>
    """

  end

end