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
      'one'
    ]
  end
end
