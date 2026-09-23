def substrings(string, dictionary)
  dictionary = dictionary.map { |word| word.downcase }
  words = string.downcase.split
  
  result = Hash.new(0)
  
  words.each do |word|
    dictionary.each do |substring| 
      if word.include?(substring) 
        result[substring] += 1
      end
    end
  end

  result
end

# --- FOR TESTING ---
# sample dictionary
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# test strings:
word = "below" # test for one word
# multiple_words = "Howdy partner, sit down! How's it going?" # test for multiple words
# no_occurrence = "zzz" # test for no occurrence of substring in string

result = substrings(word, dictionary)

# formatted output
if result.empty?
  puts "No substrings were found in string input"
else
  puts "Substrings found in entry:"
  result.each do |substring, count|
    puts "  \"#{substring}\" => #{count}\n"
  end
end