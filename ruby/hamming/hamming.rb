module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(s1, s2)
    raise ArgumentError if s1.length != s2.length
    s1.chars.zip(s2.chars).count do |l1, l2|
      l1 != l2
    end
  end
end
