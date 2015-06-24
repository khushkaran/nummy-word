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

  describe "returning composed numerals" do
    context "when passed a number between 21 and 29" do
      numerals = ['twenty-one', 'twenty-two', 'twenty-three', 'twenty-four', 'twenty-five', 'twenty-six', 'twenty-seven', 'twenty-eight', 'twenty-nine']

      (21..29).each do |i|
        it "can return the english for #{i}" do
          expect(NummyWord.new(i).word).to eq(numerals[i-21])
        end
      end
    end

    context "when passed a number between 30 and 99" do
      numerals = {
        30 => 'thirty',
        31 => 'thirty-one',
        40 => 'forty',
        42 => 'forty-two',
        50 => 'fifty',
        54 => 'fifty-four',
        60 => 'sixty',
        66 => 'sixty-six',
        70 => 'seventy',
        77 => 'seventy-seven',
        80 => 'eighty',
        88 => 'eighty-eight',
        90 => 'ninety',
        99 => 'ninety-nine'
      }

      numerals.each do |k, v|
        it "can return the english for #{k}" do
          expect(NummyWord.new(k).word).to eq(v)
        end
      end
    end
  end
end
