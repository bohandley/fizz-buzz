def fizz_buzz(args)
  error1 = 'All values of args must be integers'
  error2 = 'args[:int1] must be less than args[:int2]'
  error3 = 'args[:total] must be greater than 1'
  raise(ArgumentError, error1) unless args_values_integers?(args)
  raise(ArgumentError, error2) if args[:int1] > args[:int2]
  raise(ArgumentError, error3) if args[:total] < 1
  string = ''
  create_str(string, args)
end

def multiple?(num, mult)
  (num % mult).zero?
end

def args_values_integers?(args)
  args.values.all? { |i| i.is_a? Integer }
end

def create_str(string, args)
  1.upto(args[:total]) do |i|
    if multiple?(i, args[:int1]) || multiple?(i, args[:int2])
      string += 'fizz' if multiple?(i, args[:int1])
      string += 'buzz' if multiple?(i, args[:int2])
      string += "\n"
    else
      string += i.to_s + "\n"
    end
  end
  string
end
