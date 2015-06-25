class NummyWord
  NUMERALS = {
    1000 => 'thousand',
    100 => 'hundred',
    90 => 'ninety',
    80 => 'eighty',
    70 => 'seventy',
    60 => 'sixty',
    50 => 'fifty',
    40 => 'forty',
    30 => 'thirty',
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

  def to_words(int=@int)
    NUMERALS.each do |num, numeral|
      return zero(int, @int) if int == 0
      return non_zero(int, num, numeral) if int_dividend?(int, num)
    end
  end

  private

  def int_dividend?(int, divisor)
    int/divisor > 0
  end

  def int_length(int)
    int.to_s.length
  end

  def zero(int, ori)
    return if ori != int
    return 'zero'
  end

  def double_digit(numeral, int, num)
    return numeral if int%num == 0
    return [numeral, to_words(int%num)].join(' ')
  end

  def non_zero(int, num, numeral)
    return numeral if int_length(int) == 1
    return double_digit(numeral, int, num) if int < 100
    return [to_words(int/num), numeral, to_words(int%num)].compact.join(' ')
  end
end
