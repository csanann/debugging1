# Debugging 1

This repository contains an exercise and a challenge to practice defugging code systematically. The exercise foruses on encoding and decoding text using a simple substitution cipher, while the challenge is to find the most common letter in a given text. We also add RSpec tests to ensure the correctness of our solutions. 

## Exercise: Encoding and Decoding Text
The exercise involves implementing and debuggin the ‘encode’ and ‘decode’ methods for a simple substitution cipher. The methods are provided in the ‘en_decode.rb’ file.The purpose of these methods is to encode a given plaintext message using a key and decode the resulting ciphertext using the same key.

## RSpec Tests
To ensure the correctness of the ‘encode’ and ‘decode’ methods, we have added RSpec tests in the ‘en_decode_spec.rb’ file. Run the tests with the following command:

rspec en_decode_spec.rb

## Challenge: Most common letter
The challenge is to implement and debug the ‘letter_frequency’ method. This method takes a text string as inputs and returns the most common letter in the given text, ignoring spaces. The first occurring most common letter should be returned in case of ties.

## RSpec Tests
To ensure the ‘letter_frequency’ method is correct, we have added RSpec test in the ‘letter_frequency_spec’ file. Run the tests with the following command:

rspec letter_frequency_spec.rb

## Debuggin Tips
When debuggin code for us, it is essential to follow a systematic approach. Here are some general tips for Debugging 1: encode and decode exercise

- Understand the problem, read the code
The given code defines 2 functions, encode and decode
The given text using a keyword
The goal is to fix any issues in the code to produce the intended output
- Understand the methods
encode(plaintext, key): encrypts that given ‘plaintext’ using the provided ‘key’
decode(ciphertext, key): decrypts the given ‘ciphertext’ using the provided ‘key’
- Understand the flow
Both methods create a cipher by combining unique characters from the key and the remaining alphabet
   -encode method, the given plaintext is converted into ciphertext using the cipher.
The index of each plaintext character in the cipher is used to determine the corresponding encrypted character.
   -decode method, the given ciphertext is converted back into plaintext using the cipher. The index of each ciphertext character in the cipher is used to determine the corresponding decrypted character.
- Identify inputs and outputs
Encode: input>plaintext(string), key(string) | output> ciphertext(string)
Decode: input> ciphertext(string), key(string) | output > plaintext(string)
- Test and analyse:
Run the provided test cases for both functions
Observe that the output 
Run the encode, observe the output, <break the code into small chunks, display output for each variable or method>check the code pattern, fix, run

