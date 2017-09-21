class BookKeeping
  VERSION = 3
end

class Raindrops
  def self.convert(n)
    result = ''
    result += 'Pling' if (n % 3).zero?
    result += 'Plang' if (n % 5).zero?
    result += 'Plong' if (n % 7).zero?
    return n.to_s if result.empty?
    result
  end
end
