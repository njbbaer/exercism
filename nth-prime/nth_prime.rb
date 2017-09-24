module Prime
  def self.nth(n)
    raise ArgumentError if n < 1
    primes = []
    2.step do |i|
      primes.push i if primes.none? do |p|
        (i % p).zero?
      end
      return i if primes.size == n
    end
  end
end

module BookKeeping
  VERSION = 1
end
