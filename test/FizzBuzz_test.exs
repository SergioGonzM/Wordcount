defmodule FizzBuzzTest do
    use ExUnit.Case
    import ExUnit.CaptureIO

    test  "Multiplo de 3" do
        assert capture_io(fn -> assert FizzBuzz.fizzbuzz(3) end) == "1\n2\nFizz\n"
    end

    test  "Multiplo de 5" do
        assert capture_io(fn -> assert FizzBuzz.fizzbuzz(5) end) ==  "1\n2\nFizz\n4\nBuzz\n"
    end

    test "Multiplo de 3 y 5" do
        assert capture_io(fn -> assert FizzBuzz.fizzbuzz(15) end)  == "1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n11\nFizz\n13\n14\nFizzBuzz\n" 
    end
end

