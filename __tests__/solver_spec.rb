# frozen_string_literal: true

require 'rspec'
require('./src/solver')

describe Solver do
  context 'When testing the solver class' do
    solve = Solver.new
    it "Should return 1 if number is 0 or 1" do 
      expect(solve.factorial(0)).to eq(1)
    end

    it "Should return the factorial of a number " do
      expect(solve.factorial(5)).to eq(120)
    end

    it "Should raises an exception for non-positive values " do
      expect { solve.factorial(-1) }.to raise_error(RuntimeError, "Negative values not allowed")
    end

    it "Reverses a string" do
      expect(solve.reverse('hello')).to eq 'olleh'
    end

    it "The fizzbuz method should return 'I am fizzbuzz' " do
      fizz = Solver.new
      message = fizz.fizzbuzz
      expect(message).to eq 'I am fizzbuzz'
    end
  end
end
