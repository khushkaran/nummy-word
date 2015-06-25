require 'nummy_word'

describe NummyWord do
  it 'returns zero when 0 is passed in' do
    expect(NummyWord.new(0).to_words).to eq('zero')
  end

  it 'returns one when 1 is passed in' do
    expect(NummyWord.new(1).to_words).to eq('one')
  end

  it 'returns two when 2 is passed in' do
    expect(NummyWord.new(2).to_words).to eq('two')
  end

  { 9 => 'nine', 8 => 'eight', 7 => 'seven', 6 => 'six', 5 => 'five', 4 => 'four', 3 => 'three' }.each do |num, numeral|
    it "returns #{numeral} when #{num} is passed in" do
      expect(NummyWord.new(num).to_words).to eq(numeral)
    end
  end

  { 20 => 'twenty', 19 => 'nineteen', 18 => 'eighteen', 17 => 'seventeen', 16 => 'sixteen', 15 => 'fifteen', 14 => 'fourteen', 13 => 'thirteen', 12 => 'twelve', 11 => 'eleven', 10 => 'ten' }.each do |num, numeral|
    it "returns #{numeral} when #{num} is passed in" do
      expect(NummyWord.new(num).to_words).to eq(numeral)
    end
  end

  { 93 => 'ninety three', 90 => 'ninety', 84 => 'eighty four', 80 => 'eighty', 75 => 'seventy five', 70 => 'seventy', 66 => 'sixty six', 60 => 'sixty', 57 => 'fifty seven', 50 => 'fifty', 48 => 'forty eight', 40 => 'forty', 39 => 'thirty nine', 30 => 'thirty' }.each do |num, numeral|
    it "returns #{numeral} when #{num} is passed in" do
      expect(NummyWord.new(num).to_words).to eq(numeral)
    end
  end

  { 928 => 'nine hundred twenty eight', 837 => 'eight hundred thirty seven', 746 => 'seven hundred forty six', 655 => 'six hundred fifty five', 564 => 'five hundred sixty four', 473 => 'four hundred seventy three', 382 => 'three hundred eighty two', 291 => 'two hundred ninety one', 101 => 'one hundred one', 100 => 'one hundred' }.each do |num, numeral|
    it "returns #{numeral} when #{num} is passed in" do
      expect(NummyWord.new(num).to_words).to eq(numeral)
    end
  end

  { 9012 => 'nine thousand twelve', 8901 => 'eight thousand nine hundred one', 7890 => 'seven thousand eight hundred ninety', 6789 => 'six thousand seven hundred eighty nine', 5678 => 'five thousand six hundred seventy eight', 4567 => 'four thousand five hundred sixty seven', 3456 => 'three thousand four hundred fifty six', 2345 => 'two thousand three hundred forty five', 1234 => 'one thousand two hundred thirty four', 1000 => 'one thousand' }.each do |num, numeral|
    it "returns #{numeral} when #{num} is passed in" do
      expect(NummyWord.new(num).to_words).to eq(numeral)
    end
  end
end
