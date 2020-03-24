defmodule ElixirIdenticonTest do
  use ExUnit.Case
  doctest ElixirIdenticon

  test "hash_input of 'banana' needs be a ElixirIdenticon.Image with hex property" do
    image = ElixirIdenticon.hash_input("banana")
    assert image.hex == [114, 179, 2, 191, 41, 122, 34, 138,
                         117, 115, 1, 35, 239, 239, 124, 65]
  end

  test "pick_color of ElixirIdenticon.Image add values on color property" do
    hash = [114, 179, 2, 191, 41, 122, 34, 138,
            117, 115, 1, 35, 239, 239, 124, 65]
    image = %ElixirIdenticon.Image{
        hex: hash
    }
    |> ElixirIdenticon.pick_color
    # all elements
    assert image.hex == hash
    # first 3 elements with rgb
    assert image.color == {114, 179, 2}
  end

  test "mirror_row needs return a mirror of 3 elements repeat 0 and 1 element" do
    mirror = ElixirIdenticon.mirror_row([145, 46, 200])
    assert mirror == [145, 46, 200, 46, 145]
  end

end
