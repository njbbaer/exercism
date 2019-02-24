module Pangram
  def self.pangram?(s)
    'abcdefghijklmnopqrstuvwxyz'.chars.all? do |l|
      s.downcase.include? l
    end
  end
end

module BookKeeping
  VERSION = 5
end
