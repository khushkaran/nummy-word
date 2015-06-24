class NummyWord
  attr_reader :number
  def initialize(i)
    @number = i.to_i
  end

  def word
    numerals[@number]
  end

  private

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
