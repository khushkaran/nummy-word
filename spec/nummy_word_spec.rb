require 'nummy_word'

describe NummyWord do
  it 'can return the english for 0' do
    expect(NummyWord.new(0).word).to eq('zero')
  end

  it 'can return the english for 1' do
    expect(NummyWord.new(1).word).to eq('one')
  end
end
