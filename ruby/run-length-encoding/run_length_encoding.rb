module RunLengthEncoding
  def self.encode(input)
    ouput = ''
    letter = ''
    count = 0
    input.chars.each do |c|
      if c == letter then count += 1
      elsif count.zero?
        ouput += letter
        letter = c
      else
        ouput += (count + 1).to_s + letter
        letter = c
        count = 0
      end
    end
    if count > 0 then ouput + (count + 1).to_s + letter
    else ouput + letter
    end
  end

  def self.decode(input)
    output = ''
    n_string = ''
    input.chars.each do |c|
      if c =~ /[[:digit:]]/
        n_string += c
      elsif n_string == ''
        output += c
      else
        output += c * n_string.to_i
        n_string = ''
      end
    end
    output
  end
end

module BookKeeping
  VERSION = 3
end
