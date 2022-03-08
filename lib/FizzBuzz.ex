defmodule FizzBuzz do

    def fizzbuzz(x) do
        Enum.each(1..x, fn x -> aux{rem(x,3), rem(x,5), x}end ) 
    end

    def aux(x) do
        case x do
        {0, 0, _} -> IO.puts "FizzBuzz"
        {0, _, _} -> IO.puts "Fizz"
        {_, 0, _} -> IO.puts "Buzz"
        {_, _, x} -> IO.puts x               
        end
    end
end
