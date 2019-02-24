class Integer
  def to_roman
    to_s.chars.reverse.each_with_index.map do |d, i|
      trans = 'IVXLCDM'[i * 2..i * 2 + 2]
      %W[#{} I II III IV V VI VII VIII IX][d.to_i].tr('IVX', trans)
    end.reverse.join
  end
end

module BookKeeping
  VERSION = 2
end
