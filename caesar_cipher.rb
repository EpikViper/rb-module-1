def caesar_cipher(str, shift)
  shift %= 26
  
  cipher_array = str.each_char.map do |char|
    if is_letter(char)
      upcase = char == char.upcase
      up_char = char.upcase
      shifted_ord = up_char.ord + shift
      shifted_ord <= 90 ? up_char = shifted_ord.chr : up_char = (65 + shifted_ord - 91).chr
      upcase ? up_char : up_char.downcase 
    else
      char
    end
  end

  cipher_array.join
end


def is_letter(char) 
  char.match?(/[a-zA-Z]/)
end

ciphered_string = caesar_cipher("What a string!", 5)
print ciphered_string