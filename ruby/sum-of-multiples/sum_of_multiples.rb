require 'set'

class SumOfMultiples
  def initialize(*numbers)
    @numbers = numbers
  end

  def to(limit)
    multiples = Set.new
    @numbers.each do |n|
      multiples.merge multiples(n, limit)
    end
    multiples.sum
  end
end

def multiples(n, limit)
  Array.new((limit - 1) / n + 1) { |i| n * i }
end

module BookKeeping
  VERSION = 1
end
