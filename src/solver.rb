# frozen_string_literal: true

# A class that has factorial, reverse, and fizzbuzz methods
class Solver
  def initialize; end

  def factorial(a)
    return 1 if a <= 1
    a * factorial(a - 1)
  end

  def reverse
    'I am reverse'
  end

  def fizzbuzz
    'I am fizzbuzz'
  end
end

puts Solver.new.factorial(5)