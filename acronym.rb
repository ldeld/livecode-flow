# method

def acronymize(sentence)
  # Make an array called initials
  # Split string into words
  # Iterate over words and get the first letter (how?)
  # Push that letter to the initials array

  # Join the array of initials, upcase it and return it
  return '' unless sentence.class == String

  initials = []
  words = sentence.split
  words.each do |word|
    initials << word[0]
  end

  initials.join.upcase
end


# tests

puts acronymize("Laughing Out Loud") == "LOL"
puts acronymize("") == ""
puts acronymize("united nations") == "UN"
puts acronymize("To BE HONEST") == "TBH"

# Test if input is not a string
puts acronymize(2) == ''
