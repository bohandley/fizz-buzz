# With a loop
def fizz_buzz_loop(total)
  1.upto(total) do |i|
    if i % 5 == 0 || i % 3 ==0
      puts 'fizzbuzz' if i % 5 == 0 && i % 3 ==0
      puts 'buzz' if i % 5 == 0 && i % 3 != 0
      puts 'fizz' if i % 3 == 0 && i % 5 != 0
    else
      puts i
    end
  end
end  

fizz_buzz_loop(16)

# incrementing a string
def fizz_buzz_string(total)
  1.upto(total) do |i|
    fb = ''
    if i % 5 == 0 || i % 3 ==0
      fb += 'fizz' if i % 3 == 0
      fb += 'buzz' if i % 5 == 0
      puts fb
    else
      puts i
    end
  end
end

fizz_buzz_string(16)

# passing integer values
def fizz_buzz_val(int1, int2, total)
  1.upto(total) do |i|
    fb = ''
    if i % int1 ==0 || i % int2 == 0 
      fb += 'fizz' if i % int1 == 0
      fb += 'buzz' if i % int2 == 0
      puts fb
    else
      puts i
    end
  end
end

fizz_buzz_val(2,6,100)

# with single responsibility methods

def fizz_buzz_methods(int1, int2, total)
  1.upto(total) do |i|
    fb = ''
    if is_multiple(i, int1) || is_multiple(i, int2)
      fb += 'fizz' if is_multiple(i, int1)
      fb += 'buzz' if is_multiple(i, int2)
      puts fb
    else
      puts i
    end
  end
end

def is_multiple(num, mult) 
  num % mult == 0
end

fizz_buzz_methods(2,3,20)