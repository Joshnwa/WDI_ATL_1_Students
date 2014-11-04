teststring = "I am a robot Rabbit robot rabbits rabbits rabbit rabbiT robots Robot"

puts "What's the word you are searching for?"
searchword = gets.chomp.downcase

wordcount = teststring.downcase.split.count(searchword)

puts "The word: "+searchword+" shows up "+wordcount.to_s+" times."

stringarray = teststring.split

puts "What word would you like to replace?"

wordToReplace = gets.chomp

puts "What would you like to replace it with?"

replacementWord = gets.chomp

stringarray.map! { |word| 
if word == wordToReplace || word == wordToReplace+"s" 
# puts "Found word: "+word
replacementWord
else
word
end
}

puts stringarray.join(" ")