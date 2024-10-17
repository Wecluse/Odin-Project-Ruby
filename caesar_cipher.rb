def caesar_cipher(str, shift)
  shifted_chars = {}
  
  ('a'..'z').each_with_index do |char, index|
    shifted_chars[char] = ('a'..'z').to_a[(index + shift) % 26]
    shifted_chars[char.upcase] = ('A'..'Z').to_a[(index + shift) % 26]
  end

  modified_string = str.chars.map do |char|
    shifted_chars[char] || char 
  end.join

  modified_string
end

puts caesar_cipher("What a string!", 5) 
