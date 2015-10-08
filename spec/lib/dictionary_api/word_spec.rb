require 'rails_helper'

RSpec.describe DictionaryApi::Word, :vcr do
  describe '#definitions' do
    it 'returns definitions for a given word' do
      word = DictionaryApi::Word.new('Home')
      expect(word.definitions).to include(
        ":one's place of residence :domicile",
        ':house'
      )
    end

    it 'returns empty array when word doesnt have definitions' do
      word = DictionaryApi::Word.new('really-ackward-word')
      expect(word.definitions).to be_empty
    end
  end
end
