module BookKeeping
  VERSION = 6
end

class Gigasecond
  def self.from(t)
    t + 1_000_000_000
  end
end
