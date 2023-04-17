require 'en_decode'

RSpec.describe 'en_decode' do
  let(:key) { 'secretkey' }
  let(:plaintext) { 'theswiftfoxjumpedoverthelazydog' }
  let(:ciphertext) { 'EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL' }

  describe '#encode' do
    it 'encodes the plaintext using the key' do
      expect(encode(plaintext, key)).to eq(ciphertext)
    end
  end

  describe '#decode' do
    it 'decodes the ciphertext using the key' do
      expect(decode(ciphertext, key)).to eq(plaintext)
    end
  end
end
