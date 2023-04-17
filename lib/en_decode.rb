=begin
X cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
/ cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
... three dots range excludes the end value
.. two dots range includes the end value


X cipher[65 - char.ord]
/ cipher[char.ord - 65] 
# wrong pattern
=end

def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  return ciphertext_chars.join
end

def decode(ciphertext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars) # Use two dots (..) here
    plaintext_chars = ciphertext.chars.map do |char|
      cipher[char.ord - 65]
    end
    return plaintext_chars.join
end
  

# Intended output:
#
puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"
