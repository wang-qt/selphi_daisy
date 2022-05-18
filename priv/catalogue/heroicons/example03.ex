defmodule SelphiDaisy.Heroicons.Example03 do
  @moduledoc """
  Heroicons svg icon 基本使用方式 solid 图标.2
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Heroicons,
      height: "3200px",
      title: "03-heroicons ",
      direction: "vertical"


  alias SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <div class="grid grid-cols-7 gap-4 ">
      <!-- 1 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="academic-cap"   /></Button>
        <p>academic-cap</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="adjustments"    /></Button>
        <p>adjustments</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="annotation"    /></Button>
        <p>annotation</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="archive"    /></Button>
        <p>archive</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="arrow-circle-down"  /></Button>
        <p>arrow-circle-down</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="arrow-circle-left"   /></Button>
        <p>arrow-circle-left</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="arrow-circle-right"   /></Button>
        <p>arrow-circle-right</p>
      </div>

      <!-- 2 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="arrow-circle-up"   /></Button>
        <p>arrow-circle-up</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="arrow-down"    /></Button>
        <p>arrow-down</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="arrow-left"    /></Button>
        <p>arrow-left</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="arrow-narrow-down"    /></Button>
        <p>arrow-narrow-down</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="arrow-narrow-left"  /></Button>
        <p>arrow-narrow-left</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="arrow-narrow-right"   /></Button>
        <p>arrow-narrow-right</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="arrow-narrow-up"   /></Button>
        <p>arrow-narrow-up</p>
      </div>

      <!-- 3 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="arrow-right"   /></Button>
        <p>arrow-right</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="arrows-expand"    /></Button>
        <p>arrows-expand</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="arrow-up"    /></Button>
        <p>arrow-up</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="at-symbol"    /></Button>
        <p>at-symbol</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="backspace"  /></Button>
        <p>backspace</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="badge-check"   /></Button>
        <p>badge-check</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="ban"   /></Button>
        <p>ban</p>
      </div>


      <!-- 4 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="beaker"   /></Button>
        <p>beaker</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="bell"    /></Button>
        <p>bell</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="bookmark"    /></Button>
        <p>bookmark</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="bookmark-alt"    /></Button>
        <p>bookmark-alt</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="book-open"  /></Button>
        <p>book-open</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="briefcase"   /></Button>
        <p>briefcase</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="cake"   /></Button>
        <p>cake</p>
      </div>

      <!-- 5 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="calculator"   /></Button>
        <p>calculator</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="calendar"    /></Button>
        <p>calendar</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="camera"    /></Button>
        <p>camera</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="cash"    /></Button>
        <p>cash</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="chart-bar"  /></Button>
        <p>chart-bar</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="chart-pie"   /></Button>
        <p>chart-pie</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="chart-square-bar"   /></Button>
        <p>chart-square-bar</p>
      </div>

      <!-- 6 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="chat"   /></Button>
        <p>chat</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="chat-alt"    /></Button>
        <p>chat-alt</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="chat-alt2"    /></Button>
        <p>chat-alt2</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="check"    /></Button>
        <p>check</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="check-circle"  /></Button>
        <p>check-circle</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="chevron-double-down"   /></Button>
        <p>chevron-double-down</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="chevron-double-left"   /></Button>
        <p>chevron-double-left</p>
      </div>

      <!-- 7 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="chevron-double-right"   /></Button>
        <p>chevron-double-right</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="chevron-double-up"    /></Button>
        <p>chevron-double-up</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="chevron-down"    /></Button>
        <p>chevron-down</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="chevron-left"    /></Button>
        <p>chevron-left</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="chevron-right"  /></Button>
        <p>chevron-right</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="chevron-up"   /></Button>
        <p>chevron-up</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="chip"   /></Button>
        <p>chip</p>
      </div>

      <!-- 8 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="clipboard"   /></Button>
        <p>clipboard</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="clipboard-check"    /></Button>
        <p>clipboard-check</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="clipboard-copy"    /></Button>
        <p>clipboard-copy</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="clipboard-list"    /></Button>
        <p>clipboard-list</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="clock"  /></Button>
        <p>clock</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="cloud"   /></Button>
        <p>cloud</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="cloud-download"   /></Button>
        <p>cloud-download</p>
      </div>

      <!-- 9 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="cloud-upload"   /></Button>
        <p>cloud-upload</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="code"    /></Button>
        <p>code</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="cog"    /></Button>
        <p>cog</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="collection"    /></Button>
        <p>collection</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="color-swatch"  /></Button>
        <p>color-swatch</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="credit-card"   /></Button>
        <p>credit-card</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="cube"   /></Button>
        <p>cube</p>
      </div>

      <!-- 10 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="cube-transparent"   /></Button>
        <p>cube-transparent</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="currency-bangladeshi"    /></Button>
        <p>currency-bangladeshi</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="currency-dollar"    /></Button>
        <p>currency-dollar</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="currency-euro"    /></Button>
        <p>currency-euro</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="currency-pound"  /></Button>
        <p>currency-pound</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="currency-rupee"   /></Button>
        <p>currency-rupee</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="currency-yen"   /></Button>
        <p>currency-yen</p>
      </div>

      <!-- 11 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="cursor-click"   /></Button>
        <p>cursor-click</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="database"    /></Button>
        <p>database</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="desktop-computer"    /></Button>
        <p>desktop-computer</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="device-mobile"    /></Button>
        <p>device-mobile</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="device-tablet"  /></Button>
        <p>device-tablet</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="document"   /></Button>
        <p>document</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="document-add"   /></Button>
        <p>document-add</p>
      </div>

      <!-- 12 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="document-download"   /></Button>
        <p>document-download</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="document-duplicate"    /></Button>
        <p>document-duplicate</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="document-remove"    /></Button>
        <p>document-remove</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="document-report"    /></Button>
        <p>document-report</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="document-search"  /></Button>
        <p>document-search</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="document-text"   /></Button>
        <p>document-text</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="dots-circle-horizontal"   /></Button>
        <p>dots-circle-horizontal</p>
      </div>

      <!-- 13 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="dots-horizontal"   /></Button>
        <p>dots-horizontal</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="dots-vertical"    /></Button>
        <p>dots-vertical</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="download"    /></Button>
        <p>download</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="duplicate"    /></Button>
        <p>duplicate</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="emoji-happy"  /></Button>
        <p>emoji-happy</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="emoji-sad"   /></Button>
        <p>emoji-sad</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="exclamation"   /></Button>
        <p>exclamation</p>
      </div>

      <!-- 14 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="exclamation-circle"   /></Button>
        <p>exclamation-circle</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="external-link"    /></Button>
        <p>external-link</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="eye"    /></Button>
        <p>eye</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="eye-off"    /></Button>
        <p>eye-off</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="fast-forward"  /></Button>
        <p>fast-forward</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="film"   /></Button>
        <p>film</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="filter"   /></Button>
        <p>filter</p>
      </div>

      <!-- 15 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="finger-print"   /></Button>
        <p>finger-print</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="fire"    /></Button>
        <p>fire</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="flag"    /></Button>
        <p>flag</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="folder"    /></Button>
        <p>folder</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="folder-add"  /></Button>
        <p>folder-add</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="folder-download"   /></Button>
        <p>folder-download</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="folder-open"   /></Button>
        <p>folder-open</p>
      </div>

      <!-- 16 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="folder-remove"   /></Button>
        <p>folder-remove</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="gift"    /></Button>
        <p>gift</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="globe"    /></Button>
        <p>globe</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="globe-alt"    /></Button>
        <p>globe-alt</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="hand"  /></Button>
        <p>hand</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="hashtag"   /></Button>
        <p>hashtag</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="heart"   /></Button>
        <p>heart</p>
      </div>

      <!-- 17 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="home"   /></Button>
        <p>home</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="identification"    /></Button>
        <p>identification</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="inbox"    /></Button>
        <p>inbox</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="inbox-in"    /></Button>
        <p>inbox-in</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="information-circle"  /></Button>
        <p>information-circle</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="key"   /></Button>
        <p>key</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="library"   /></Button>
        <p>library</p>
      </div>

      <!-- 18 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="light-bulb"   /></Button>
        <p>light-bulb</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="lightning-bolt"    /></Button>
        <p>lightning-bolt</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="link"    /></Button>
        <p>link</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="location-marker"    /></Button>
        <p>location-marker</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="lock-closed"  /></Button>
        <p>lock-closed</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="lock-open"   /></Button>
        <p>lock-open</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="login"   /></Button>
        <p>login</p>
      </div>

      <!-- 19 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="logout"   /></Button>
        <p>logout</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="mail"    /></Button>
        <p>mail</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="mail-open"    /></Button>
        <p>mail-open</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="map"    /></Button>
        <p>map</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="menu"  /></Button>
        <p>menu</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="menu-alt1"   /></Button>
        <p>menu-alt1</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="menu-alt2"   /></Button>
        <p>menu-alt2</p>
      </div>

      <!-- 20 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="menu-alt3"   /></Button>
        <p>menu-alt3</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="menu-alt4"    /></Button>
        <p>menu-alt4</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="microphone"    /></Button>
        <p>microphone</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="minus"    /></Button>
        <p>minus</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="minus-circle"  /></Button>
        <p>minus-circle</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="moon"   /></Button>
        <p>moon</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="music-note"   /></Button>
        <p>music-note</p>
      </div>

      <!-- 21 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="newspaper"   /></Button>
        <p>newspaper</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="office-building"    /></Button>
        <p>office-building</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="paper-airplane"    /></Button>
        <p>paper-airplane</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="paper-clip"    /></Button>
        <p>paper-clip</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="pause"  /></Button>
        <p>pause</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="pencil"   /></Button>
        <p>pencil</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="pencil-alt"   /></Button>
        <p>pencil-alt</p>
      </div>

      <!-- 22 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="phone"   /></Button>
        <p>phone</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="phone-incoming"    /></Button>
        <p>phone-incoming</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="phone-missed-call"    /></Button>
        <p>phone-missed-call</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="phone-outgoing"    /></Button>
        <p>phone-outgoing</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="photograph"  /></Button>
        <p>photograph</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="play"   /></Button>
        <p>play</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="plus"   /></Button>
        <p>plus</p>
      </div>

      <!-- 23 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="plus-circle"   /></Button>
        <p>plus-circle</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="presentation-chart-bar"    /></Button>
        <p>presentation-chart-bar</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="presentation-chart-line"    /></Button>
        <p>presentation-chart-line</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="printer"    /></Button>
        <p>printer</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="puzzle"  /></Button>
        <p>puzzle</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="qrcode"   /></Button>
        <p>qrcode</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="question-mark-circle"   /></Button>
        <p>question-mark-circle</p>
      </div>

      <!-- 24 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="receipt-refund"   /></Button>
        <p>receipt-refund</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="receipt-tax"    /></Button>
        <p>receipt-tax</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="refresh"    /></Button>
        <p>refresh</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="reply"    /></Button>
        <p>reply</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="rewind"  /></Button>
        <p>rewind</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="rss"   /></Button>
        <p>rss</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="save"   /></Button>
        <p>save</p>
      </div>

      <!-- 25 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="save-as"   /></Button>
        <p>save-as</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="scale"    /></Button>
        <p>scale</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="scissors"    /></Button>
        <p>scissors</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="search"    /></Button>
        <p>search</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="search-circle"  /></Button>
        <p>search-circle</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="selector"   /></Button>
        <p>selector</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="server"   /></Button>
        <p>server</p>
      </div>

      <!-- 26 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="share"   /></Button>
        <p>share</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="shield-check"    /></Button>
        <p>shield-check</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="shield-exclamation"    /></Button>
        <p>shield-exclamation</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="shopping-bag"    /></Button>
        <p>shopping-bag</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="shopping-cart"  /></Button>
        <p>shopping-cart</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="sort-ascending"   /></Button>
        <p>sort-ascending</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="sort-descending"   /></Button>
        <p>sort-descending</p>
      </div>

      <!-- 27 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="sparkles"   /></Button>
        <p>sparkles</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="speakerphone"    /></Button>
        <p>speakerphone</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="star"    /></Button>
        <p>star</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="status-offline"    /></Button>
        <p>status-offline</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="status-online"  /></Button>
        <p>status-online</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="stop"   /></Button>
        <p>stop</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="sun"   /></Button>
        <p>sun</p>
      </div>

      <!-- 28 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="support"   /></Button>
        <p>support</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="switch-horizontal"    /></Button>
        <p>switch-horizontal</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="switch-vertical"    /></Button>
        <p>switch-vertical</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="table"    /></Button>
        <p>table</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="tag"  /></Button>
        <p>tag</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="template"   /></Button>
        <p>template</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="terminal"   /></Button>
        <p>terminal</p>
      </div>

      <!-- 29 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="thumb-down"   /></Button>
        <p>thumb-down</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="thumb-up"    /></Button>
        <p>thumb-up</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="ticket"    /></Button>
        <p>ticket</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="translate"    /></Button>
        <p>translate</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="trash"  /></Button>
        <p>trash</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="trending-down"   /></Button>
        <p>trending-down</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="trending-up"   /></Button>
        <p>trending-up</p>
      </div>

      <!-- 30 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="truck"   /></Button>
        <p>truck</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="upload"    /></Button>
        <p>upload</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="user"    /></Button>
        <p>user</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="user-add"    /></Button>
        <p>user-add</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="user-circle"  /></Button>
        <p>user-circle</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="user-group"   /></Button>
        <p>user-group</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="user-remove"   /></Button>
        <p>user-remove</p>
      </div>

      <!-- 31 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="users"   /></Button>
        <p>users</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="variable"    /></Button>
        <p>variable</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="video-camera"    /></Button>
        <p>video-camera</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="view-boards"    /></Button>
        <p>view-boards</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="view-grid"  /></Button>
        <p>view-grid</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="view-grid-add"   /></Button>
        <p>view-grid-add</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="view-list"   /></Button>
        <p>view-list</p>
      </div>

      <!-- 32 -->
      <div>
        <Button class="btn btn-outline"><Heroicons name="volume-off"   /></Button>
        <p>volume-off</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="volume-up"    /></Button>
        <p>volume-up</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="wifi"    /></Button>
        <p>wifi</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="x"    /></Button>
        <p>x</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="x-circle"  /></Button>
        <p>x-circle</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="zoom-in"   /></Button>
        <p>zoom-in</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="zoom-out"   /></Button>
        <p>zoom-out</p>
      </div>


    </div>
    """

  end

end