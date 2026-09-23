def substrings(string, dictionary)
  dictionary = dictionary.map { |word| word.downcase }
  normalised = string.downcase.split
  
  result = Hash.new(0)
  
  normalised.each do |word|
    dictionary.each do |entry| 
      if word.include?(entry) 
        result[entry] += 1
      end
    end
  end

  result
end

# usage:
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)