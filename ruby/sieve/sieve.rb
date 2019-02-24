class Sieve
  def initialize(max)
    @max = max
  end

  def primes
    primes = []
    (2..@max).each do |i|
      primes.push i if primes.none? do |p|
        (i % p).zero?
      end
    end
    primes
  end
end

module BookKeeping
  VERSION = 1
end
