defmodule DataDrivenTestTest do
  use ExUnit.Case

  data = [
    {1, 3, 4},
    # Error intencional
    {7, 4, 11},
    {5, 6, 11},
    {8, 7, 15},
    {1, 1, 2},
    # Error
    {1, 2, 3}
  ]

  for {a, b, c} <- data do
    @a a
    @b b
    @c c
    test "sum of #{@a} and #{@b} should equal #{@c}" do
      assert SUT.sum(@a, @b) == @c
    end
  end
end
