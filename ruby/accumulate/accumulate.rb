class Array
  def accumulate
    result = []
    each { |v| result.push yield v }
    result
  end
end

module BookKeeping
  VERSION = 1
end
