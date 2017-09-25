module Prime
  def self.nth(n)
    raise ArgumentError if n < 1
    primes = []
    2.step do |i|
      sqrt_i = Math.sqrt(i)
      primes.push i if primes.none? do |p|
        break true if p > sqrt_i
        (i % p).zero?
      end
      return i if primes.size == n
    end
  end
end

module BookKeeping
  VERSION = 1
end
