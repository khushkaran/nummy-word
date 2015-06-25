class NummyWord
  NUMERALS = {
    1 => 'one'
  }
  def initialize(int)
    @int = int.to_i
  end

  def to_words
    NUMERALS.each do |num, numeral|
      return 'zero' if @int == 0
      return "#{numeral}"
    end
  end
end
