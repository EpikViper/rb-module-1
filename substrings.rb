def substrings(word, dict)
  dict.reduce(Hash.new(0)) do |result, dict_word|
    curr_word = word.downcase
    while curr_word.include?(dict_word)
      result[dict_word] += 1
      curr_word.sub!(dict_word, '')
    end
    result
  end
end

  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
  
  filtered_dict_1 = substrings("below", dictionary)
  filtered_dict_2 = substrings("Howdy partner, sit down! How's it going?", dictionary)
  puts filtered_dict_1
  puts filtered_dict_2
  
