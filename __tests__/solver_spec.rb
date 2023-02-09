# frozen_string_literal: true

require 'rspec'
require('./src/solver')

solve = Solver.new
describe Solver do
  context 'When testing the factorial method' do
    it 'Should return 1 if number is 0 or 1' do
      expect(solve.factorial(0)).to eq(1)
    end

    it 'Should return the factorial of a number ' do
      expect(solve.factorial(5)).to eq(120)
    end

    it 'Should raises an exception for non-positive values ' do
      expect { solve.factorial(-1) }.to raise_error(RuntimeError, 'Negative values not allowed')
    end
  end
  context 'When testing the reverse method' do
    it 'Reverses a string' do
      expect(solve.reverse('hello')).to eq 'olleh'
    end
  end

  context 'When testing the fizzbuzz method' do
    it 'Multiples of 3' do
      expect(solve.fizzbuzz(9)).to eq 'fizz'
    end

    it 'Multiples of 5' do
      expect(solve.fizzbuzz(25)).to eq 'buzz'
    end
    it 'Multiples of 5 and 3' do
      expect(solve.fizzbuzz(15)).to eq 'fizzbuzz'
    end
    it 'Not a multiple of 3 and 5' do
      expect(solve.fizzbuzz(7)).to eq '7'
    end
  end
end
