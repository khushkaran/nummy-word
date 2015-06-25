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
end
