# frozen_string_literal: true

# A class that has factorial, reverse, and fizzbuzz methods
class Solver
  def initialize; end

  def factorial(a)
    return 1 if a == 0
    raise "Negative values not allowed" if a < 0
    a * factorial(a - 1)
  end

  def reverse(word)
    answer = []
    word.split("").each do |str|
      answer.unshift(str)
    end
    return answer.join("")
  end

  def fizzbuzz(n)
    return "fizz" if n % 3 == 0
    return "buzz" if n % 5 == 0
  end
end

