module Acronym
  def self.abbreviate(text)
    text.split(/[ ,-]/).map(&:chr).join.upcase
  end
end