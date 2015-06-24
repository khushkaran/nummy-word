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
    [
      'zero',
      'one',
      'two',
      'three',
      'four',
      'five',
      'six',
      'seven',
      'eight',
      'nine',
      'ten',
      'eleven',
      'twelve',
      'thirteen',
      'fourteen',
      'fifteen',
      'sixteen',
      'seventeen',
      'eighteen',
      'nineteen',
      'twenty'
    ]
  end
end
