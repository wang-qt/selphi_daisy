defmodule SelphiDaisy.Form.SampleModel do

  @moduledoc ""
  use Ecto.Schema
  import Ecto.Changeset

  schema "" do
    field(:name, :string)
    field(:username, :string)

    field(:avatar, :string)

    field(:email, :string)
    field(:email1, :string)
    field(:email2, :string)
    field(:email3, :string)
    field(:email4, :string)
    field(:email5, :string)
    field(:email6, :string)
    field(:email7, :string)

    field(:select, :string)
    field(:select1, :string)
    field(:select2, :string)
    field(:select3, :string)
    field(:select4, :string)
    field(:select5, :string)

    field(:textarea, :string)
    field(:textarea1, :string)
    field(:textarea2, :string)
    field(:textarea3, :string)

    field(:checkbox, :boolean)
    field(:checkbox1, :boolean)

    field(:toggle, :string)
    field(:toggle1, :string)
    field(:toggle2, :string)
    field(:toggle3, :string)
    field(:toggle4, :string)

    field(:radio, :string)
    field(:radio1, :string)
    field(:radio2, :string)
    field(:radio3, :string)

    field(:rating, :string)
    field(:rating1, :string)
    field(:rating2, :string)
    field(:rating3, :string)

    field(:textinput, :string)
    field(:textinput1, :string)

    field(:range, :string)
    field(:range1, :string)
    field(:range2, :string)
    field(:range3, :string)

    field(:country, :string)
    field(:country1, :string)

    field(:province, :string)
    field(:city, :string)

    field(:color, :string)
    field(:color1, :string)
    field(:color2, :string)
    field(:color3, :string)

    field(:role, :string)
    field(:role1, :string)
    field(:role2, :string)
    field(:role3, :string)
    field(:role4, :string)

    field(:date, :string)
    field(:date1, :string)
    field(:date2, :string)
    field(:date3, :string)
    field(:date4, :string)

    field(:dateselect, :map)
    field(:dateselect1, :map)
    field(:dateselect2, :map)
    field(:dateselect3, :map)
    field(:dateselect4, :map)

    field(:datetimeselect, :map)
    field(:datetimeselect1, :map)
    field(:datetimeselect2, :map)
    field(:datetimeselect3, :map)
    field(:datetimeselect4, :map)
    field(:datetimeselect5, :map)
    field(:datetimeselect6, :map)


   # :naive_datetime (no time zone information) or :utc_datetime
#    field(:datetimelocal, :naive_datetime)
#    field(:datetimelocal1, :naive_datetime)
#    field(:datetimelocal2, :naive_datetime)
#    field(:datetimelocal3, :naive_datetime)
#    field(:datetimelocal4, :naive_datetime)
#    field(:datetimelocal5, :naive_datetime)
#    field(:datetimelocal6, :naive_datetime)

    field(:datetimelocal, :utc_datetime)
    field(:datetimelocal1, :utc_datetime)
    field(:datetimelocal2, :utc_datetime)
    field(:datetimelocal3, :utc_datetime)
    field(:datetimelocal4, :utc_datetime)
    field(:datetimelocal5, :utc_datetime)
    field(:datetimelocal6, :utc_datetime)

    field(:number, :integer)
    field(:number1, :integer)
    field(:number2, :integer)
    field(:number3, :integer)
    field(:number4, :integer)
    field(:number5, :integer)


    field(:password, :string)
    field(:password1, :string)
    field(:password2, :string)
    field(:password3, :string)
    field(:password4, :string)
    field(:password5, :string)

    field(:domain, :string) # 区号

    field(:tel, :string)
    field(:tel1, :string)
    field(:tel2, :string)
    field(:tel3, :string)
    field(:tel4, :string)
    field(:tel5, :string)

    field(:url, :string)
    field(:url1, :string)
    field(:url2, :string)
    field(:url3, :string)
    field(:url4, :string)
    field(:url5, :string)



  end

  @doc false
  def changeset(model, attrs \\ %{}) do
    model
    |> cast(attrs, [:name, :username,
                    :avatar,
                    :number, :number1, :number2, :number3, :number4, :number5,
                    :password, :password1, :password2, :password3, :password4, :password5,
                    :domain,
                    :tel, :tel1, :tel2, :tel3, :tel4, :tel5,
                    :url, :url1, :url2, :url3, :url4, :url5,
                    :email, :email1, :email2, :email3, :email4, :email5, :email6, :email7,
                    :textarea, :textarea1, :textarea2, :textarea3,
                    :checkbox,
                    :radio , :radio1 ,:radio2 ,:radio3 ,
                    :rating , :rating1 ,:rating2 ,:rating3 ,
                    :toggle , :toggle1 ,:toggle2 ,:toggle3 ,:toggle4 ,
                    :toggle , :toggle1 ,:toggle2 ,:toggle3 ,:toggle4 ,
                    :select , :select1 ,:select2 ,:select3 ,:select4 ,:select5 ,
                   :textinput1,
                   :range, :range1, :range2, :range3,
                   :color, :color1, :color2, :color3,
                   :role, :role1, :role2, :role3, :role4,
                   :date, :date1, :date2, :date3, :date4,
                   :country, :country1, :province, :city,
                   :dateselect, :dateselect1, :dateselect2, :dateselect3, :dateselect4,
                   :datetimeselect, :datetimeselect1, :datetimeselect2, :datetimeselect3, :datetimeselect4, :datetimeselect5, :datetimeselect6,
                   :datetimelocal, :datetimelocal1, :datetimelocal2, :datetimelocal3, :datetimelocal4,:datetimelocal5, :datetimelocal6,
     ])
      #    |> cast_attachments(attrs, [:thumbnail])
    |> validate_required([:name, :username, :email,
        :select,
      :date, :date1, :date2, :date3, :date4,
      :textarea, :textarea3,   :checkbox, :radio, :textinput1])
    |> validate_format(:email, email_regex(), message: "This email is invalid")
    |> validate_format(:email1, email_regex(), message: "This email is invalid")
    |> validate_format(:email2, email_regex(), message: "This email is invalid")
    |> validate_format(:email3, email_regex(), message: "This email is invalid")
    |> validate_format(:email4, email_regex(), message: "This email is invalid")
    |> validate_format(:email5, email_regex(), message: "This email is invalid")
    |> validate_format(:email6, email_regex(), message: "This email is invalid")
    |> validate_format(:email7, email_regex(), message: "This email is invalid")
    |> validate_length(:textinput1, min: 6, max: 10)
    |> validate_length(:textarea, min: 20, max: 50)
    |> validate_length(:textarea3, min: 50, max: 100)
  end

  defp email_regex do
         ~r/(?:[a-z0-9!#$%&'*+\/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+\/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])/
  end

end