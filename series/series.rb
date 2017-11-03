class Series
  def initialize(series)
    @series = series.to_s
  end

  def slices(n)
    raise ArgumentError if n > @series.size
    (0..@series.size - n).map do |i|
      @series[i..i + n - 1]
    end
  end
end
