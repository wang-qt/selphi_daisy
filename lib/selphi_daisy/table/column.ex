defmodule SelphiDaisy.Table.Column do
  use Surface.Component, slot: "cols"


  @doc "其他tw类 .whitespace-normal "
  prop class, :css_class, default: []

  @doc "Add arbitrary attrs style: "
  prop opts, :keyword, default: []

  @doc """
   td默认不换行，宽度由内容决定。设置宽度后，样式添加 whitespace-normal break-all
  宽度取值为 250px 等
  """
  prop width, :string



  @doc "字段列显示标题"
  prop title, :string, required: true

  # 配置字段 过滤/排序 显示隐藏等属性
  @doc """
  字段名称，列来源字段名称，field不存在，则 无法搜索/排序
  """
  prop field, :string

  @doc """
  列是否隐藏，隐藏属性不能 搜索排序，隐藏字段可以出现在 字段显示/隐藏下拉框
  """
  prop hide, :boolean

  @doc """
  虚拟字段，为计算属性(不对应数据库表字段)，virtual为true不能进行排序/搜索
  """
  prop virtual, :boolean

  @doc """
  字段是否能排序
  """
  prop sort, :boolean

  @doc """
  字段是否能搜索
  """
  prop search, :boolean


  @doc """
  当search 为 true时，设置字段类型，用于搜索输入框
  """
  prop type, :string, default: "text", values: ~w(text number select  date  date-range datetime datetime-range)

  @doc """
  当 type 为 select 类型时， 组件的选项，参见 From.Select 组件
  <Select  field={:country1}    bordered color="primary" control_class="w-40"
       label="分组,key-value"
       prompt={[key: "请选择国家", disabled: true]}
       selected="cn"
       options={[
              "亚洲": [{"中国","cn"}, {"日本", "jp"}],
              "欧洲": [{"德国", "gm"},{"英国", "br"}],
           ]}   />
  当 type 为 date-range 类型时，为时间范围， options={["2020-01-01", "2022-01-01"]}
  当 type 为 date, datetime 类型时，为默认时间，   options={["2020-01-01"]} || options={["2022-04-13T14:20:03"]}
  当 type 为 number 类型时，为默认数字，   options={["5"]}
  """
  prop options, :any, default: []





end