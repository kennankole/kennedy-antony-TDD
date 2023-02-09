# frozen_string_literal: true

require 'rspec'
require('./src/solver')

describe Solver do
  context 'When testing the solver class' do
    fact = Solver.new

    it "Should return 1 if number is 0 or 1" do 
      expect(fact.factorial(0)).to eq(1)
    end

    it "Should return the factorial of a number " do
      expect(fact.factorial(5)).to eq(120)
    end

    it "Should raises an exception for non-positive values " do
      expect { fact.factorial(-1) }.to raise_error(RuntimeError, "Negative values not allowed")
    end

    it "The reverse method should return 'I am reverse' " do
      revert = Solver.new
      message = revert.reverse
      expect(message).to eq 'I am reverse'
    end

    it "The fizzbuz method should return 'I am fizzbuzz' " do
      fizz = Solver.new
      message = fizz.fizzbuzz
      expect(message).to eq 'I am fizzbuzz'
    end
  end
end
