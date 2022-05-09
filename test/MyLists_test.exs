defmodule MyListsTest do
  use ExUnit.Case

  test "Test Mapa" do
    assert MyLists.map([1, 2, 3], fn x -> x + 2 end) == [3, 4, 5]
  end

  test "Test each" do
    assert MyLists.each(["This", "is", "an", "example"], fn x -> IO.puts(x) end) == :ok
  end

  test "Test reduce" do
    assert MyLists.reduce([1, 2, 3], 0, fn x, a -> x + a end) == 6
  end

  test "Test zip" do
    assert MyLists.zip([1, 2, 3, 4, 5], [:a, :b, :c, :d, :e]) == [
             {1, :a},
             {2, :b},
             {3, :c},
             {4, :d},
             {5, :e}
           ]
  end

  test "Test zip_with" do
    assert MyLists.zip_with([1, 2], [3, 4], fn x, y -> x + y end) == [4, 6]
  end
end
