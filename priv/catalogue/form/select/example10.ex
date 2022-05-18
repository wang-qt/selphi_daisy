defmodule SelphiDaisy.Form.Select.Example10 do
  @moduledoc """
  select  。
  options 是enumerable类型，用来产生 select的 `<options>`，opions 的每一项可以有三种格式
  * keyword list：应该包含 :key 和 :value. 也可以包含其他key,eg. :disabled 或 :selected,来设置option
  * two-item tuple: 第一项是 atom string integer，用作 `<options>` 的label，
    第二项是  atom string integer，用作 `<options>` 的 value
  *  atom string integer, 用作 `<options>` 的label和value。

  ## Optgroups 选项分组
  1 如果 options 是map，
  2 或者keywordlist 但第一项(key)是string, atom or integer, 第二项是list或map。
  key用作`<optgroup>` 的名称，value 用作嵌套在`<optgroup>`组 中的 `<options>`

  ## Examples
       # Assuming form contains a User schema
      <Select  field={:role}  options={1..100} />
      #=> <select id="user_role" name="user[role]">
      #=>   <option value="0">1</option>
      #=>   ...
      #=>   <option value="100">100</option>
      #=> </select>

      <Select  field={:role}  options={["Admin": "admin", "User": "user"]} />
       #=> <select id="user_role" name="user[role]">
      #=>   <option value="admin">Admin</option>
      #=>   <option value="user">User</option>
      #=> </select>

      <Select field={:role}  options={[ [key: "Admin", value: "admin", disabled: true],
                           [key: "User", value: "user"]]}
      #=> <select id="user_role" name="user[role]">
      #=>   <option value="admin" disabled="disabled">Admin</option>
      #=>   <option value="user">User</option>
      #=> </select>

     也可以提供提示语句
     <Select  field={:role}  options={["Admin": "admin", "User": "user"]}
           prompt="请选择角色"  />
      #=> <select id="user_role" name="user[role]">
      #=>   <option value="">请选择角色</option>
      #=>   <option value="admin">Admin</option>
      #=>   <option value="user">User</option>
      #=> </select>

     像其他选项一样，定制提示
     <Select  field={:role}  options={["Admin": "admin", "User": "user"]}
           prompt={[key: "请选择角色", disabled: true]}  />
      #=> <select id="user_role" name="user[role]">
      #=>   <option value="" disabled="">请选择角色</option>
      #=>   <option value="admin">Admin</option>
      #=>   <option value="user">User</option>
      #=> </select>

     默认选中1
     <Select field={:role}   bordered color="primary" control_class="w-32"
            label="selected 默认选择"
            prompt="请选择角色"
            options={[
                       [key: "Admin", value: "admin"],
                       [key: "User", value: "user", selected: "selected"]
                    ]}  />
      #=> <select id="user_role" name="user[role]">
      #=>   <option value="" >请选择角色</option>
      #=>   <option value="admin">Admin</option>
      #=>   <option selected="selected" value="user">User</option>
      #=> </select>

    默认选中2
     <Select  field={:role}  options={["Admin": "admin", "User": "user"]} selected="user"
           prompt={[key: "请选择角色", disabled: true]}  />
      #=> <select id="user_role" name="user[role]">
      #=>   <option value="" disabled="">请选择角色</option>
      #=>   <option value="admin">Admin</option>
      #=>   <option selected="selected" value="user">User</option>
      #=> </select>

     分组
      <Select  field={:country}    bordered color="primary" control_class="w-40"
           label="分组"
           prompt={[key: "请选择国家", disabled: true]}
           options={[
                  "亚洲": ["中国", "日本", "越南", "韩国", "朝鲜", "伊朗"],
                  "欧洲": ["德国", "英国", "南斯拉夫", "意大利", "匈牙利", "保加利亚"],
               ]}   />
     #=><select class="select w-full select-bordered select-primary" id="sample_model_country" name="sample_model[country]">
     #=>   <option disabled="" value="">请选择国家</option>
     #=>   <optgroup label="亚洲">
     #=>      <option value="中国" selected="">中国</option>
     #=>       <option value="日本">日本</option>
     #=>       <option value="越南">越南</option>
     #=>   </optgroup>
     #=>   <optgroup label="欧洲">
     #=>     <option value="德国">德国</option>
     #=>     <option value="英国">英国</option>
     #=>   </optgroup>
     #=></select>

  分组2 key-value
   <Select  field={:country}    bordered color="primary" control_class="w-40"
           label="分组,key-value"
           prompt={[key: "请选择国家", disabled: true]}
           selected="cn"
           options={[
                  "亚洲": [{"中国","cn"}, {"日本", "jp"}],
                  "欧洲": [{"德国", "gm"},{"英国", "br"}],
               ]}   />

     #=>    <select class="select w-full select-bordered select-primary" id="sample_model_country" name="sample_model[country]">
     #=>      <option disabled="" value="">请选择国家</option>
     #=>      <optgroup label="亚洲">
     #=>         <option selected="" value="cn">中国</option>
     #=>         <option value="jp">日本</option>
     #=>      </optgroup>
     #=>     <optgroup label="欧洲">
     #=>       <option value="gm">德国</option>
     #=>       <option value="br">英国</option>
     #=>     </optgroup>
     #=>    </select>
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.Select,
      height: "1400px",
      title: "select 组件  options  高级用法"

  alias SelphiDaisy.Form.SampleModel

  alias Surface.Components.Form  # 直接使用底层 Form!!

  data changeset, :map,
       default:
         SampleModel.changeset(%SampleModel{}, %{
           "username" => "bulma",
           "email" => "hello@"
         })
         |> Map.put(:action, :insert)

  def render(assigns) do
    ~F"""
    <div class="border-base-300  border flex  min-h-[6rem] min-w-[18rem] max-w-4xl items-center justify-center m-4  ">
    <Form
      for={@changeset}
      change={"change"}
      submit={"submit"}
      opts={autocomplete: "off"}
      class="w-full">

      <Select  field={:role}   bordered color="primary" control_class="w-24"
               label="options为list" help_text="options为[1,2,...100]"
               options={1..100}  />

      <Select  field={:role1}   bordered color="primary" control_class="w-32"
               label="options为 keyword list"
               options={["Admin": "admin", "User": "user"]} />

      <Select  field={:role1}   bordered color="primary" control_class="w-32"
               label="options为keyword list"
               options={[Admin: "admin", User: "user"]} />

      <Select field={:role2}   bordered color="primary" control_class="w-32"
            label="options为list of list"
            options={[
                       [key: "Admin", value: "admin", disabled: true],
                       [key: "User", value: "user"]
                    ]}  />

     <Select  field={:role3}   bordered color="primary" control_class="w-64"
               label="提示语"
               prompt="请选择角色"
               options={[Admin: "admin", User: "user"]} />

     <Select  field={:role4}   bordered color="primary" control_class="w-64"
               label="定制提示"
               prompt={[key: "请选择角色", disabled: true]}
               options={[Admin: "admin", User: "user"]} />

     <Select field={:role4}   bordered color="primary" control_class="w-32"
            label="selected 默认选择"
            prompt="请选择角色"
            options={[
                       [key: "Admin", value: "admin"],
                       [key: "User", value: "user", selected: "selected"]
                    ]}  />

     <Select  field={:role}
           label="selected 默认选择2"  bordered color="primary" control_class="w-32"
           prompt={[key: "请选择角色", disabled: true]}
           options={["Admin": "admin", "User": "user"]} selected="user" />


     <Select  field={:role}    bordered color="primary" control_class="w-32"
           label="options为tuple-list"
           prompt={[key: "请选择角色", disabled: true]}
           options={[{"Admin","admin"}, {"User", "user"}]}   />

     <Select  field={:country}    bordered color="primary" control_class="w-40"
           label="分组"
           prompt={[key: "请选择国家", disabled: true]}
           selected="中国"
           options={[
                  "亚洲": ["中国", "日本", "越南", "韩国", "朝鲜", "伊朗"],
                  "欧洲": ["德国", "英国", "南斯拉夫", "意大利", "匈牙利", "保加利亚"],
               ]}   />


     <Select  field={:country1}    bordered color="primary" control_class="w-40"
           label="分组,key-value"
           prompt={[key: "请选择国家", disabled: true]}
           selected="cn"
           options={[
                  "亚洲": [{"中国","cn"}, {"日本", "jp"}],
                  "欧洲": [{"德国", "gm"},{"英国", "br"}],
               ]}   />



    </Form>
    </div>


    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 select change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end

end