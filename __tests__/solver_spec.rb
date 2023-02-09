# frozen_string_literal: true

require 'rspec'
require('./src/solver')

describe Solver do
  context 'When testing the solver class' do
    it "Should return the factorial of a number " do
      fact = Solver.new
      expect(fact.factorial(5)).to eq(120)
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
