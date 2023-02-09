# frozen_string_literal: true

# A class that has factorial, reverse, and fizzbuzz methods
class Solver
  def initialize; end

  def factorial(num)
    return 1 if num.zero?
    raise 'Negative values not allowed' if num.negative?

    num * factorial(num - 1)
  end

  def reverse(word)
    answer = []
    word.chars.each do |str|
      answer.unshift(str)
    end
    answer.join
  end

  def fizzbuzz(num)
    return 'fizzbuzz' if (num % 5).zero? && (num % 3).zero?
    return 'fizz' if (num % 3).zero?
    return 'buzz' if (num % 5).zero?
    return num.to_s if num % 3 != 0 || n % 5 != 0
  end
end

