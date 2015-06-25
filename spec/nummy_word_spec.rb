require 'nummy_word'

describe NummyWord do
  it 'returns zero when 0 is passed in' do
    expect(NummyWord.new(0).to_words).to eq('zero')
  end

  it 'returns one when 1 is passed in' do
    expect(NummyWord.new(1).to_words).to eq('one')
  end
end
