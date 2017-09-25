module Bob
  def self.hey(remark)
    case remark
    when /^(?=.*[A-Z])(?!.*[a-z])/ then 'Whoa, chill out!'
    when /\?\s*\Z/ then 'Sure.'
    when /\A\s*\Z/ then 'Fine. Be that way!'
    else 'Whatever.'
    end
  end
end

module BookKeeping
  VERSION = 1
end
