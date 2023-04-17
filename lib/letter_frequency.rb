#file: letter_frequency.rb

def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1 unless char == ' '
  end
  counter.to_a.max_by { |k, v| v }[0][0]
end

puts get_most_common_letter("the roof, the rooffffff, the rooffffff is on fire!")
# => "o"
=begin
X counter.to_a.sort_by { |k, v| v }[0][0]
/  counter.to_a.sort_by { |k, v| -v }[0][0]

v = display the ascending order/ lower number = s = 1
-v = display the descending order/higher frequency 0 = higher frequncy
=end