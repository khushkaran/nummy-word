require 'nummy_word'

describe NummyWord do
  zero_twenty_numerals = [ 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty' ]

  (0..20).each do |i|
    it "can return the english for #{i}" do
      expect(NummyWord.new(i).word).to eq(zero_twenty_numerals[i])
    end
  end
end
