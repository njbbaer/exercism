module Isogram
  def self.isogram?(input)
    chars = input.delete('- ').downcase.split('')
    chars.uniq == chars
  end
end
