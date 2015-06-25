class NummyWord
  NUMERALS = {
    20 => 'twenty',
    19 => 'nineteen',
    18 => 'eighteen',
    17 => 'seventeen',
    16 => 'sixteen',
    15 => 'fifteen',
    14 => 'fourteen',
    13 => 'thirteen',
    12 => 'twelve',
    11 => 'eleven',
    10 => 'ten',
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
