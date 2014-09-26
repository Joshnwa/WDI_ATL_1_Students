puts "Please enter some text"
story = gets.chomp

puts "What word do you want to search for?"

searchword = gets.chomp.downcase

wordcount = story.downcase.split.count(searchword)

puts "The word: "+searchword+" shows up "+wordcount.to_s+" times."

puts "What word do you want to replace?"

replaceword = gets.chomp.downcase 

puts "What word do you want to replace it with?"

replace = gets.chomp.downcase

story.downcase!.gsub! replaceword, replace

puts story