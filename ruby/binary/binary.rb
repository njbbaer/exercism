module Binary
  def self.to_decimal(binary)
    throw ArgumentError if binary =~ /[^01]/
    binary.reverse.chars.each_with_index.sum do |digit, i|
      digit.to_i * 2**i
    end
  end
end

module BookKeeping
  VERSION = 3
end
