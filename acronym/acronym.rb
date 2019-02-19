module Acronym
  def self.abbreviate(text)
    text.upcase.split(/[ ,-]/).map(&:chr).join
  end
end