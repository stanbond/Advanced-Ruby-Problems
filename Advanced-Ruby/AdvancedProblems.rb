# Write a method yell_sentence that takes in a sentence string and returns a new sentence where every word is yelled. Use map to solve this.

def yell_sentence(sent)
  sent.upcase.split.map { |word| word + '! ' }.join
end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"

# Write a method whisper_words that takes in an array of words and returns a new array containing a whispered version of each word. Solve this using map.

def whisper_words(words)
  words.map { |arr| arr.downcase + "... " }
end

print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts

# Write a method o_words that takes in a sentence string and returns an array of the words that contain an "o". Use select in your solution!

def o_words(sentence)
	sentence.split.select { |word| word.include?("o")}
end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts

# Write a method last_index that takes in a string and a character. The method should return the last index where the character can be found in the string.

def last_index(str, char)
	i = str.length - 1
  while i >= 0
    return i if char == str[i]
    i -= 1
  end
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7

# Write a method most_vowels that takes in a sentence string and returns the word of the sentence that contains the most vowels.

