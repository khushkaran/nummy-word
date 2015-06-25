class NummyWord
  NUMERALS = {
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
