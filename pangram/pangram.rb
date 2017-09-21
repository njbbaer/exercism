module Pangram
  ALPHABET = 'abcdefghijklmnopqrstuvwxyz'.chars
  def self.pangram?(s)
    s = s.downcase
    ALPHABET.each { |l| return false unless s.include? l }
    true
  end
end

module BookKeeping
  VERSION = 5
end
