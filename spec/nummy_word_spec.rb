require 'nummy_word'

describe NummyWord do
  it 'returns zero when 0 is passed in' do
    expect(NummyWord.new(0).to_words).to eq('zero')
  end
end
