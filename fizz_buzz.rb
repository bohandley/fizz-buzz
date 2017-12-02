# With a loop
def fizz_buzz_loop(total)
  1.upto(total) do |i|
    if i % 5 == 0 || i % 3 ==0
      puts "fizzbuzz" if i % 5 == 0 && i % 3 ==0
      puts "buzz" if i % 5 == 0 && i % 3 != 0
      puts "fizz" if i % 3 == 0 && i % 5 != 0
    else
      puts i
    end
  end
end  

fizz_buzz(16)