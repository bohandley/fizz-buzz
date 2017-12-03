# input = int1 is an integer, int2 is an integer, total is an integer
# output = string containing every number from 1 to total where
  # multiples of int1 are replaced by 'fizz'
  # multiples of int2 are replaced by 'buzz'
  # multiples of both int1 and int2 are replaced by 'fizzbuzz' 
# with error handling for argument order
# with error handling for arguments not integers
# with error handling where int1 is greater than int2
# with error handling for total < 1

def fizz_buzz_with_care(args)
  raise(ArgumentError, 'All values of args must be integers') if !args_values_integers?(args)
  raise(ArgumentError, 'args[:int1] must be less than args[:int2]') if args[:int1] > args[:int2]
  raise(ArgumentError, 'args[:total] must be greater than 1') if args[:total] < 1
  range = ''
  1.upto(args[:total]) do |i|
    fb = ''
    if is_multiple(i, args[:int1]) || is_multiple(i, args[:int2])
      fb += 'fizz' if is_multiple(i, args[:int1])
      fb += 'buzz' if is_multiple(i, args[:int2])
      range += fb + "\n"
    else
      range += i.to_s + "\n"
    end
  end
  range
end

def is_multiple(num, mult) 
  num % mult == 0
end

def args_values_integers?(args)
  args.values.all? {|i| i.class == Integer}
end

values  = { int1: 2, int2: 3, total: 24 }
values1 = { int1: 2, int2: 3, total: "24" }
values2 = { int1: 5, int2: 3, total: 24 }
values3 = { int1: 2, int2: 3, total: -1 }
puts fizz_buzz_with_care(values)
puts fizz_buzz_with_care(values1)
# puts fizz_buzz_with_care(values2)
# puts fizz_buzz_with_care(values3)
