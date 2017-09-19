module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(s1, s2)
    raise ArgumentError if s1.length != s2.length
    hamming = 0
    (0..s1.length - 1).each do |i|
      hamming += 1 if s1[i] != s2[i]
    end
    hamming
  end
end
