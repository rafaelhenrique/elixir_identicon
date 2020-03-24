defmodule ElixirIdenticon.ImageTest do
  use ExUnit.Case
  doctest ElixirIdenticon.Image

  test "create new struct ElixirIdenticon.Image success" do
    hash = [114, 179, 2, 191, 41, 122, 34, 138,
            117, 115, 1, 35, 239, 239, 124, 65]
    [r, g, b | _] = hash
    image = %ElixirIdenticon.Image{hex: hash, color: {r, g, b}}
    assert image.hex == hash
    assert image.color == {114, 179, 2}
  end

end
