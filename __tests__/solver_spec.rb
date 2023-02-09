require 'rspec'
require ('./src/solver')

describe Solver do
  context "When testing the solver class" do
    it "The factorial method should return 'Hello mate' " do
      fact = Solver.new
      text = fact.factorial
      expect(text).to eq "Hello mate"
    end

    it "The reverse method should return 'I am reverse' " do
      revert = Solver.new
      message = revert.reverse
      expect(message).to eq "I am reverse"
    end

    it "The fizzbuz method should return 'I am fizzbuzz' " do
      fizz = Solver.new
      message = fizz.fizzbuzz
      expect(message).to eq "I am fizzbuzz"
    end
  end
end