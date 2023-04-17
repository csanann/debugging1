#file letter_frequency_spec.rb
require 'letter_frequency'

RSpec.describe 'letter_frequency' do
    describe '#get_most_common_letter' do
      it 'returns the most common letter in the given text' do
        text = 'the quick brown fox jumps over the lazy dog'
        most_common_letter = 'o'
        expect(get_most_common_letter(text)).to eq(most_common_letter)
      end
  
      it 'returns the first occurring most common letter in case of ties' do
        text = 'abracadabra'
        most_common_letter = 'a'
        expect(get_most_common_letter(text)).to eq(most_common_letter)
      end
    end
  end  