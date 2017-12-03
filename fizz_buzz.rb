# input = int1 is an integer, int2 is an integer, total is an integer
# output = string containing every number from 1 to total where
  # multiples of int1 are replaced by 'fizz'
  # multiples of int2 are replaced by 'buzz'
  # multiples of both int1 and int2 are replaced by 'fizzbuzz' 
# with error handling for argument order
# with error handling for arguments not integers
# with error handling for total < 1

def fizz_buzz_with_care(args)
  range = ''
  puts args[:total]
  1.upto(args[:total]) do |i|
    fb = ''
    if is_multiple(i, args[:int1]) || is_multiple(i, args[:int2])
      fb += 'fizz' if is_multiple(i, args[:int1])
      fb += 'buzz' if is_multiple(i, args[:int2])
      puts fb
    else
      puts i
    end
  end
end

def is_multiple(num, mult) 
  num % mult == 0
end

values = { int1: 2, int2: 3, total: 24 }
fizz_buzz_with_care(values)


# with single responsibility methods

# def fizz_buzz_methods(int1, int2, total)
#   1.upto(total) do |i|
#     fb = ''
#     if is_multiple(i, int1) || is_multiple(i, int2)
#       fb += 'fizz' if is_multiple(i, int1)
#       fb += 'buzz' if is_multiple(i, int2)
#       puts fb
#     else
#       puts i
#     end
#   end
# end

# def is_multiple(num, mult) 
#   num % mult == 0
# end

# fizz_buzz_methods(2,3,20)
# # With a loop
# def fizz_buzz_loop(total)
#   1.upto(total) do |i|
#     if i % 5 == 0 || i % 3 ==0
#       puts 'fizzbuzz' if i % 5 == 0 && i % 3 ==0
#       puts 'buzz' if i % 5 == 0 && i % 3 != 0
#       puts 'fizz' if i % 3 == 0 && i % 5 != 0
#     else
#       puts i
#     end
#   end
# end  

# fizz_buzz_loop(16)

# # incrementing a string
# def fizz_buzz_string(total)
#   1.upto(total) do |i|
#     fb = ''
#     if i % 5 == 0 || i % 3 ==0
#       fb += 'fizz' if i % 3 == 0
#       fb += 'buzz' if i % 5 == 0
#       puts fb
#     else
#       puts i
#     end
#   end
# end

# fizz_buzz_string(16)

# # passing integer values
# def fizz_buzz_val(int1, int2, total)
#   1.upto(total) do |i|
#     fb = ''
#     if i % int1 ==0 || i % int2 == 0 
#       fb += 'fizz' if i % int1 == 0
#       fb += 'buzz' if i % int2 == 0
#       puts fb
#     else
#       puts i
#     end
#   end
# end

# fizz_buzz_val(2,6,100)

