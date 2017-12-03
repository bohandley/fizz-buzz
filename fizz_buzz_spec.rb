require_relative('fizz_buzz')
  values  = { int1: 2, int2: 3, total: 24 }
  values1 = { int1: 2, int2: 3, total: "24" }
  values2 = { int1: 5, int2: 3, total: 24 }
  values3 = { int1: 2, int2: 3, total: -1 }

describe 'Fizz-buzz' do
  describe 'takes a hash as an argmunet' do
    it 'returns a string' do
      expect(fizz_buzz(values)).to be_a String
    end
  end

  describe 'string contains integers, fizz, buzz, or fizzbuzz' do
    it 'does not replace an integer if it is not a multiple of either int1 or int2' do
      expect(fizz_buzz(values).split[0]).to eq '1'
    end

    it 'replaces nultiples if int1 with fizz' do
      expect(fizz_buzz(values).split[1]).to eq 'fizz'
    end

    it 'replaces multiples of int2 with buzz' do
      expect(fizz_buzz(values).split[2]).to eq 'buzz'
    end

    it 'replaces multiples of both int1 and int2 with fizzbuzz' do
      expect(fizz_buzz(values).split[5]).to eq 'fizzbuzz'
    end
  end  

  describe 'throws an error' do
    it 'if any values of args are not integers' do
      expect {fizz_buzz(values2)}.to raise_error ArgumentError
    end

    it 'if args[:int1] is greater than args[:int2]' do
      expect {fizz_buzz(values2)}.to raise_error ArgumentError
    end

    it 'if total is greater than 1' do
      expect {fizz_buzz(values3)}.to raise_error ArgumentError
    end
  end
end