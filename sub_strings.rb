def substrings(word, dictionary)
        result = Hash.new(0) # Initialize a hash to store the counts of found substrings
        text = word.downcase   # Convert the input word to lowercase
        dictionary.each do |sub| # Iterate over each substring in the provided dictionary
            matches = text.scan(sub.downcase).size # size method returns the number of matches found
            result[sub] += matches if matches > 0 # Increment count
        end
    result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary).inspect # Example 1
puts substrings("Howdy partner, sit down! How's it going?", dictionary).inspect # Example 2



