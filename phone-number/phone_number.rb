module PhoneNumber
  REGEX = /^\+?1?[\s.-]*\(?([2-9]\d{2})\)?[\s.-]*([2-9]\d{2})[\s.-]*(\d{4})\s*$/

  def self.clean(raw_number)
    match = REGEX.match(raw_number)
    match ? match[1] + match[2] + match[3] : nil
  end
end

module BookKeeping
  VERSION = 2
end
