class NummyWord
  NUMERALS = {
    9 => 'nine',
    8 => 'eight',
    7 => 'seven',
    6 => 'six',
    5 => 'five',
    4 => 'four',
    3 => 'three',
    2 => 'two',
    1 => 'one'
  }
  def initialize(int)
    @int = int.to_i
  end

  def to_words
    NUMERALS.each do |num, numeral|
      return 'zero' if @int == 0
      return "#{numeral}" if @int/num > 0
    end
  end
end
