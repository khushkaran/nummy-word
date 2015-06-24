class NummyWord
  attr_reader :number
  def initialize(i)
    @number = i.to_i
  end

  def word
    numerals[@number] ? numerals[@number] : compose_numeral
  end

  private

  def compose_numeral
    stringified_number = @number.to_s
    zero_counter = stringified_number.length
    stringified_number.chars.map{ |char|
      zero_counter -= 1
      char += "0" * zero_counter
      numerals[char.to_i]
    }.join('-')
  end

  def numerals
    {
      0 => 'zero',
      1 => 'one',
      2 => 'two',
      3 => 'three',
      4 => 'four',
      5 => 'five',
      6 => 'six',
      7 => 'seven',
      8 => 'eight',
      9 => 'nine',
      10 => 'ten',
      11 => 'eleven',
      12 => 'twelve',
      13 => 'thirteen',
      14 => 'fourteen',
      15 => 'fifteen',
      16 => 'sixteen',
      17 => 'seventeen',
      18 => 'eighteen',
      19 => 'nineteen',
      20 => 'twenty',
      30 => 'thirty',
      40 => 'forty',
      50 => 'fifty',
      60 => 'sixty',
      70 => 'seventy',
      80 => 'eighty',
      90 => 'ninety',
    }
  end
end
