class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    counts = Hash.new(0)
    clean = @phrase.downcase.gsub(/[^a-z0-9\s']|(\s'|'\s)/i, ' ')
    clean.split.each { |word| counts[word] += 1 }
    counts
  end
end

module BookKeeping
  VERSION = 1
end
