defmodule SimpleElixirMicroserviceTest do
  use ExUnit.Case
  doctest SimpleElixirMicroservice

  test "greets the world" do
    assert SimpleElixirMicroservice.hello() == :world
  end
end
