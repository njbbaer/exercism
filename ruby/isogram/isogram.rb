require 'set'

module Isogram
  def self.isogram?(input)
    chars = Set[]
    input.delete('- ').downcase.each_char do |c|
      return false unless chars.add?(c)
    end
    true
  end
end