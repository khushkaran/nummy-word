require 'nummy_word'

describe NummyWord do
  context "when passed number between 0 and 20" do
    numerals = [ 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty' ]

    (0..20).each do |i|
      it "can return the english for #{i}" do
        expect(NummyWord.new(i).word).to eq(numerals[i])
      end
    end
  end

  context "when passed a number between 21 and 29" do
    numerals = ['twenty-one', 'twenty-two', 'twenty-three', 'twenty-four', 'twenty-five', 'twenty-six', 'twenty-seven', 'twenty-eight', 'twenty-nine']

    (21..29).each do |i|
      it "can return the english for #{i}" do
        expect(NummyWord.new(i).word).to eq(numerals[i-21])
      end
    end
  end
end
