class Matrix
  def initialize(string)
    @matrix = string.split("\n").map do |row|
      row.strip.split.map(&:to_i)
    end
  end

  def rows
    @matrix
  end

  def columns
    @matrix.transpose
  end
end