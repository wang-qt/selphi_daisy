defmodule SelphiDaisyTest do
  use ExUnit.Case
  doctest SelphiDaisy

  test "greets the world" do
    assert SelphiDaisy.hello() == :world
  end
end
