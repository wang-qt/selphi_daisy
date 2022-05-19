#  selphi_daisy 基于selphi技术栈和daisyui的组件库

## 1. 简介

Selphi_daisy 是一个**服务端渲染**组件库，允许开发者以极高的效率开发类似spa效果的应用，而只需要写极少的js。

selphi的是一套技术栈的缩写。

- **s** 代表[surface](https://github.com/surface-ui/surface)，一个基于liveview的服务端spa组件库
- **e** 代表elixir，
- **l** 代表[liveview](https://hexdocs.pm/phoenix_live_view/) ，
- **phi** 代表phoenix框架

组件的样式使用 [daisyUI](https://daisyui.com/)。daisyUI是一个基于[Tailwind Css](https://tailwindcss.com/docs/installation) 的css框架。

全部文档和使用实例，都在  ``prive/catalogue`` 目录下，将来会在官网上有更详细的教程(planning)。

## 2. 使用实例

```elixir
  def render(assigns) do
    ~F"""
    <Card >
      <Figure>
        <img src="https://picsum.photos/id/1005/400/250" class="w-full">
      </Figure>
      <Body>
        <Title title="Tile title prop" />
        <Text>
           Rerum reiciendis beatae tenetur excepturi aut pariatur est eos. Sit sit necessitatibus veritatis sed molestiae voluptates incidunt iure sapiente.
        </Text>
        <Action class="justify-end">
          <button class="btn btn-secondary">More info</button>
        </Action>
      </Body>
    </Card>
    """
  end
```

## 3. 特性

- 组件丰富，美观，实现了[daisyUI](https://daisyui.com/)的所有组件，参见 https://daisyui.com/components/ 文档
- 完整的表单逻辑，Form下所有组件都实现了整个交互逻辑，和纯前端组件不同，selphi_daisy Form组件在change和submitt事件中，直接提交表单到后端的liveview，无需调用接口，json编解码等操作。参数校验，提示错误等功能都已天然具备，无需前端校验，还能实现前端难以实现的功能。
- 使用简单，符合现代前端组件使用方式，类似Vue/React等
- 易于扩展，定制。组件有丰富的属性可以设制，开发者还可以传入Tailwind的原子类进行定制。
- slot机制：许多组件包含slot，开发者可以尽情发挥。

## 4. 安装配置教程

### 4.1 创建工程

Phoenix v1.6提供了对liveview默认支持，先创建一个phoenix项目

```
# myapp 改为你的项目名称
mix phx.new my_app
```

> 注意：如果你使用的是phoenix老版本，或者要添加到现有不支持liveview的工程，请参见live view的安装文档 https://hexdocs.pm/phoenix_live_view/installation.html。
>
> 本组件库依赖 surface，参见surface安装配置文档 https://surface-ui.org/getting_started
>
> selphi_cms是一个使用selphi_daisy和selphi_dynatable组件的elixir/phoenix/liveview/surface技术栈的，开箱即用的starter项目，请参见该项目的配置 https://github.com/wang-qt/selphi_cms。



先 按shell提示，

```
mix ecto.create
iex -S mix phx.server
访问 http://localhost:4000
```

  成功出现页面后，执行下面步骤。



### 4.2 修改 mix.exs 

```elixir
# SelphiCms改为你的工程名称
defmodule SelphiCms.MixProject do
  use Mix.Project

  def project do
    [
      app: :selphi_cms,
      version: "0.1.0",
      elixir: "~> 1.12",
      # catalogue 路径
      elixirc_paths: elixirc_paths(Mix.env()),
      # surface 配置
      compilers: [:phoenix] ++ [:gettext] ++ Mix.compilers() ++ [:surface],
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {SelphiCms.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # catalogue 路径
  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(:dev), do: ["lib"] ++ catalogues()
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:bcrypt_elixir, "~> 3.0"},
      {:phoenix, "~> 1.6.8"},
      {:phoenix_ecto, "~> 4.4"},
      {:ecto_sql, "~> 3.6"},
      {:postgrex, ">= 0.0.0"},
      {:phoenix_html, "~> 3.0"},
      {:phoenix_live_reload, "~> 1.2", only: :dev},
      {:phoenix_live_view, "~> 0.17.5"},
      {:floki, ">= 0.30.0", only: :test},
      {:phoenix_live_dashboard, "~> 0.6"},
      {:esbuild, "~> 0.4", runtime: Mix.env() == :dev},
      {:swoosh, "~> 1.3"},
      {:telemetry_metrics, "~> 0.6"},
      {:telemetry_poller, "~> 1.0"},
      {:gettext, "~> 0.18"},
      {:jason, "~> 1.2"},
      {:plug_cowboy, "~> 2.5"},
      # selphi_daisy 依赖
      {:selphi_daisy, git: "https://github.com/wang-qt/selphi_daisy.git"},
      {:selphi_dynatable, git: "https://github.com/wang-qt/selphi_dynatable.git"},
      {:surface, "~> 0.7.4"},
      {:surface_catalogue, "~> 0.4.1"},
      {:surface_markdown, "~> 0.4.0"},
      {:tzdata, "~> 1.1.1"},     # 在 congfig.exs 添加 config :elixir, :time_zone_database, Tzdata.TimeZoneDatabase
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to install project dependencies and perform other setup tasks, run:
  #
  #     $ mix setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      setup: ["deps.get", "ecto.setup"],
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      test: ["ecto.create --quiet", "ecto.migrate --quiet", "test"],
#      "assets.deploy": ["esbuild default --minify", "phx.digest"],
      # 发布 catalogue 资源
      "assets.catalogue": ["esbuild catalogue --minify", "phx.digest"],
      # 发布  selphi_daisy 的 资源 文件
      "assets.selphi.daisy": ["run  priv/scripts/publish_daisy_assets.exs"],
    ]
  end
  def catalogues do
    [
      "priv/catalogue",
      "deps/selphi_daisy/priv/catalogue",
    ]
  end

end

```

修改mix.exs后重新安装依赖``mix dips.get``。



### 4.3 创建publish_daisy_assets.exs

在 ``priv/scripts``目录下创建 ``publish_daisy_assets.exs``脚本文件。

```elixir

# 当前路径为执行 mix 命令的路径
{:ok, cwd} = File.cwd()

IO.puts "发布 css 资源 \n"
IO.puts "当前路径: #{cwd}"

# umbrella
#src_path  = Path.expand("../selphi_daisy/assets/css")

# gitee
src_path  = Path.expand("deps/selphi_daisy/assets/css")
dest_path = Path.expand("assets/css")

IO.puts "源路径: \n #{src_path}"
IO.puts "目标路径:  \n #{dest_path}"

# 目录拷贝 selphi_daisy 的 scss 文件到 selphi_cms_web 的 css路径
{:ok, files_and_directories} =
  File.cp_r(src_path,dest_path, fn source,destination ->
     IO.gets("Overwriting #{destination} \n by #{source}. \n Type y to confirm. ") == "y\n"
  end )

IO.puts "替换文件，files_and_directories: #{inspect files_and_directories} \n"
IO.puts "拷贝完成，请手动修改app.scss 添加新scss文件的引用！ \n\n\n"

# 拷贝完成， 修改app.scss 添加 新 scss文件的引用！！

#######################################################
IO.puts "发布 js 资源 \n"
IO.puts "当前路径: #{cwd}"

# umbrella
#src_path  = Path.expand("../selphi_daisy/assets/js")

# gitee
src_path  = Path.expand("deps/selphi_daisy/assets/js")
dest_path = Path.expand("assets/js")

IO.puts "源路径: \n #{src_path}"
IO.puts "目标路径:  \n #{dest_path}"

# 目录拷贝 selphi_daisy 的 js 文件到 selphi_cms_web 的 js 路径
{:ok, files_and_directories} =
  File.cp_r(src_path,dest_path, fn source,destination ->
    IO.gets("Overwriting #{destination} \n by #{source}. \n Type y to confirm. ") == "y\n"
  end )

IO.puts "替换文件，files_and_directories: #{inspect files_and_directories} \n"
IO.puts "拷贝 js 完成，请手动修改 app.js 添加新js文件的引用！  \n\n\n"


#######################################################
IO.puts "发布 icon 资源 \n"

# umbrella
#src_path  = Path.expand("../selphi_daisy/assets/icons")

# gitee
src_path  = Path.expand("deps/selphi_daisy/assets/icons")
dest_path = Path.expand("assets/static/icons")

IO.puts "源路径: \n #{src_path}"
IO.puts "目标路径:  \n #{dest_path}"
# 目录拷贝 selphi_daisy 的 icons 文件到 selphi_cms_web 的 static/icons 路径
{:ok, files_and_directories} =
  File.cp_r(src_path,dest_path, fn source,destination ->
    IO.gets("Overwriting #{destination} \n by #{source}. \n Type y to confirm. ") == "y\n"
  end )

IO.puts "替换文件，files_and_directories: #{inspect files_and_directories} \n"
IO.puts "拷贝icons完成!!! \n\n\n"

```

执行 ``mix assets.selphi.daisy``或``mix run priv/scripts/publish_daisy_assets.exs``,拷贝selphi_daisy的前端资源，包括 scss，js，icons等。

### 4.4 修改config.exs

```elixir
# Configure esbuild (the version is required)
config :esbuild,
  version: "0.14.29",
#  default: [
#    args:
#      ~w(js/app.js --bundle --target=es2017 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
#    cd: Path.expand("../assets", __DIR__),
#    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
#  ],
  catalogue: [
    args: ~w(js/app.js --bundle --target=es2016 --minify --outdir=../../../priv/static/assets/catalogue),
    cd: Path.expand("../deps/surface_catalogue/assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]
  
 ...
 
# 配置gettext, 默认为中文
config :gettext, :default_locale, "zh"

# 安装除了utc以外的时区, for SelphiDaisy.Form.DateTimeLocalInput  组件
config :elixir, :time_zone_database, Tzdata.TimeZoneDatabase
...

  
```

mix.exs alias部分 添加如下片段，**发布 surface_catalogue前端资源**

```elixir
  defp aliases do
    [
...
      # 发布 catalogue 资源
      "assets.catalogue": ["esbuild catalogue --minify"],
    ]
  end
```



### 4.5 修改dev.exs

```elixir
config :selphi_cms, SelphiCmsWeb.Endpoint,
  # Binding to loopback ipv4 address prevents access from other machines.
  # Change to `ip: {0, 0, 0, 0}` to allow access from other machines.
  http: [ip: {127, 0, 0, 1}, port: 4000],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: "3xzaZjm3D/+QJ1/whF4Cp3csBzywOD1vKrhZRrK5ofNT+aPeqWQFGigmOo7p1pg+",
  watchers: [
    # Start the esbuild watcher by calling Esbuild.install_and_run(:default, args)
#    esbuild: {Esbuild, :install_and_run, [:default, ~w(--sourcemap=inline --watch)]},
    node: [
      "node_modules/webpack/bin/webpack.js",
      "--mode",
      "development",
      "--watch",
      cd: Path.expand("../assets", __DIR__)
    ],

  ]
  
# Watch static and templates for browser reloading.
config :selphi_cms, SelphiCmsWeb.Endpoint,
  live_reload: [
    patterns: [
      ~r"priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$",
      ~r"priv/gettext/.*(po)$",
      ~r"lib/selphi_cms_web/(live|views)/.*(ex)$",
      ~r"lib/selphi_cms_web/templates/.*(eex)$",
      ~r"lib/selphi_cms_web/(live|components|controls)/.*(ex|sface|js)$",  #for hook
      ~r"priv/catalogue/.*(eex)$"
    ]
  ]  

...
# surface compile hook file
config :surface, :compiler, hooks_output_dir: "assets/js/_hooks"

```

修改watchers部分，**使用 webpack来热加载前端资源**。修改live_reload部分，监控后端资源变化。



phoenix1.6后去掉了webpack，换成esbuild，但是由于本项目前端比较重，**所以必须自己来配置webpack**。

### 4.6  创建package.json文件

```js
{
  "name": "assets",
  "version": "1.0.0",
  "description": "",
  "scripts": {
    "deploy": "NODE_ENV=production webpack --mode production",
    "watch": "webpack --mode development --watch"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "devDependencies": {
    "@babel/core": "^7.17.0",
    "@babel/preset-env": "^7.16.11",
    "@tailwindcss/typography": "^0.5.2",
    "autoprefixer": "^10.4.2",
    "babel-loader": "^8.2.3",
    "copy-webpack-plugin": "^9.1.0",
    "css-loader": "^6.6.0",
    "daisyui": "^2.14.3",
    "esbuild": "^0.14.38",
    "file-loader": "^6.2.0",
    "hard-source-webpack-plugin": "^0.13.1",
    "mini-css-extract-plugin": "^2.5.3",
    "node-sass": "^7.0.1",
    "optimize-css-assets-webpack-plugin": "^6.0.1",
    "postcss": "^8.4.6",
    "postcss-cli": "^9.1.0",
    "postcss-import": "^14.0.2",
    "postcss-loader": "^6.2.1",
    "postcss-nested": "^5.0.6",
    "sass-loader": "^12.4.0",
    "tailwindcss": "^3.0.24",
    "terser-webpack-plugin": "^5.3.1",
    "url-loader": "^4.1.1",
    "webpack": "^5.68.0",
    "webpack-cli": "^4.9.2"
  },
  "dependencies": {
    "alpinejs": "^3.8.1",
    "phoenix": "file:../deps/phoenix",
    "phoenix_html": "file:../deps/phoenix_html",
    "phoenix_live_view": "file:../deps/phoenix_live_view",
    "topbar": "^1.0.1"
  }
}

```

在 assets目录下创建package.json

### 4.7 创建postcss.config.js

```elixir
module.exports = {
  plugins: {
    "postcss-import": {},
    tailwindcss: {},
    autoprefixer: {},
  }
}

```

在 assets目录下创建postcss.config.js

### 4.8  创建webpack.config.js

```js
const path = require('path');
const glob = require('glob');
const HardSourceWebpackPlugin = require('hard-source-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const TerserPlugin = require('terser-webpack-plugin');
const OptimizeCSSAssetsPlugin = require('optimize-css-assets-webpack-plugin');
const CopyWebpackPlugin = require('copy-webpack-plugin');

module.exports = (env, options) => {
  const devMode = options.mode !== 'production';

  return {
    optimization: {
      minimize: true,
      minimizer: [
        new TerserPlugin(),
        // new OptimizeCSSAssetsPlugin({})
      ]
    },
    entry: {
      'app': glob.sync('./vendor/**/*.js').concat(['./js/app.js'])
    },
    output: {
      filename: '[name].js',
      // path: path.resolve(__dirname, '../priv/static/js'),
      path: path.resolve(__dirname, '../priv/static/assets'),
      publicPath: '/assets/'
    },
    devtool: devMode ? 'eval-cheap-module-source-map' : undefined,
    module: {
      rules: [
        {
          test: /\.js$/,
          exclude: /node_modules/,
          use: {
            loader: 'babel-loader'
          }
        },
        {
          test: /\.[s]?css$/,
          use: [
            MiniCssExtractPlugin.loader,
            'css-loader',
            'postcss-loader',
            'sass-loader',
          ],
        }
      ]
    },
    plugins: [
      // new MiniCssExtractPlugin({ filename: '../css/app.css' }),
      new MiniCssExtractPlugin({ filename: 'app.css' }),
      // new CopyWebpackPlugin([{ from: 'static/', to: '../' }])
      new CopyWebpackPlugin({
        patterns: [
          { from: "static/", to: "../" },
        ],
      })
    ]
    // .concat(devMode ? [new HardSourceWebpackPlugin()] : []) // webpack5 内置此功能，不再需要
  }
};

```

在 assets目录下创建postcss.config.js

### 4.9 修改app.scss

 首先把 app.css 改名为 app.scss，phoenix.css改为phoenix.scss

```scss
/* This file is for your main application CSS */
//import "./phoenix";

// add by wqt
@import "~tailwindcss/base";
@import "~tailwindcss/components";


@import "~tailwindcss/utilities";

@import 'zoom-in';
@import 'tab';
@import 'form';
@import 'icon';
@import 'table';

...
```



### 4.10  修改app.js

```js
// We import the CSS which is extracted to its own file by esbuild.
// Remove this line if you add a your own CSS build pipeline (e.g postcss).
// import "../css/app.css"

import "../css/app.scss"

// If you want to use Phoenix channels, run `mix help phx.gen.channel`
// to get started and then uncomment the line below.
// import "./user_socket.js"

// You can include dependencies in two ways.
//
// The simplest option is to put them in assets/vendor and
// import them using relative paths:
//
//     import "../vendor/some-package.js"
//
// Alternatively, you can `npm install some-package --prefix assets` and import
// them using a path starting with the package name:
//
//     import "some-package"
//

// Include phoenix_html to handle method=PUT/DELETE in forms and buttons.
import "phoenix_html"
// Establish Phoenix Socket and LiveView configuration.
import {Socket} from "phoenix"
import {LiveSocket} from "phoenix_live_view"
import topbar from "../vendor/topbar"

// 添加hook
import Hooks from "./_hooks"

// 加载 selphi_daisy 组件的事件
import   "./selphi_daisy"

let csrfToken = document.querySelector("meta[name='csrf-token']").getAttribute("content")
let liveSocket = new LiveSocket("/live", Socket, {
    params: {_csrf_token: csrfToken},
    hooks: Hooks,  // 添加所有 hook
})

// Show progress bar on live navigation and form submits
topbar.config({barColors: {0: "#29d"}, shadowColor: "rgba(0, 0, 0, .3)"})
window.addEventListener("phx:page-loading-start", info => topbar.show())
window.addEventListener("phx:page-loading-stop", info => topbar.hide())

// connect if there are any LiveViews on the page
liveSocket.connect()

// expose liveSocket on window for web console debug logs and latency simulation:
// >> liveSocket.enableDebug()
// >> liveSocket.enableLatencySim(1000)  // enabled for duration of browser session
// >> liveSocket.disableLatencySim()
window.liveSocket = liveSocket


```

要点：

- 开始部分 ``import "../css/app.scss"``,webpack自动打包css文件
-  ``import Hooks from "./_hooks"``，添加组件hook  js
- ``import   "./selphi_daisy"``,添加发布的 selphi_daisy js
- ``hooks: Hooks, ``  ,  socket 添加所有 hook

app.js 还可以添加**全局事件监听处理函数**。



### 4.11 修改 router.ex

```elixir
defmodule SelphiCmsWeb.Router do
  use SelphiCmsWeb, :router
  
  import Surface.Catalogue.Router
  
  ...
  
  # 添加 /catalogue 路由
  if Mix.env() == :dev do
    scope "/" do
      pipe_through :browser
      surface_catalogue "/catalogue"
    end
  end
  
end  
```



### 4.12 修改endpoint.ex

```elixir
defmodule SelphiCmsWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :selphi_cms
   
    # when deploying your static files in production.
    #  添加 icons 静态资源路径
  plug Plug.Static,
    at: "/",
    from: :selphi_cms,
    gzip: false,
    only: ~w(assets icons fonts images uploads favicon.ico robots.txt)
  ...
end  
```



喔，确实需要配置很多东西！参见[selphi_cms](https://github.com/wang-qt/selphi_cms)，是一个完整的例子。



## 5. 简单实用

程序正常启动后，访问 http://localhost:4000/catalogue ，可以查看selphi_daisy组件的文档和使用实例。包含了组件几乎所有的使用方法。


