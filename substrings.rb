# frozen_string_literal: true

def substrings(string, dictionary)
  string = string.downcase

  matches = dictionary.map { |substring| string.scan(substring) }

  matches.flatten.tally
end

# --- FOR TESTING ---
# sample dictionary
dictionary = %w[below down go going horn how howdy it i low own part partner sit]

# test strings:
word = 'below' # test for one word
# multiple_words = "Howdy partner, sit down! How's it going?" # test for multiple words
# no_occurrence = "zzz" # test for no occurrence of substring in string

result = substrings(word, dictionary)

# formatted output
if result.empty?
  puts 'No substrings were found in string input'
else
  puts 'Substrings found in entry:'
  result.each do |substring, count|
    puts "  \"#{substring}\" => #{count}\n"
  end
end
