teststring = "Just like cats, rabbits can easily learn to use a litter box. Place a litter box in the cage to encourage this behavior. If your rabbit roams freely through multiple rooms of your home, its a good idea to have litter boxes in several places. Many rabbits enjoy spending time relaxing in their litter box, so make sure that it is of ample size. For bedding (litter), stay away from cedar or other wood shavings, which may cause liver damage or trigger allergic reactions in rabbits. Also avoid clumping or dusty kitty litters, which can cause serious health problems if eaten. Instead, stick with organic litters made of paper, wood pulp, or citrus. Newspaper can work too, but may not be as absorbent. Be sure to put fresh hay in the litter box daily, as many rabbits like to have a snack while sitting in their litter box."

puts "What's the word you are searching for?"
searchword = gets.chomp.downcase

wordcount = teststring.downcase.split.count(searchword)

puts "The word: "+searchword+" shows up "+wordcount.to_s+" times."

puts "Which word would you like to replace?"
redact = gets.chomp
puts "What would you like to replace it with?"
new_word = gets.chomp


words = teststring.downcase.split(" ")

words.each do |word| 

	if redact == word
		print new_word + " "
	else
		print word + " " 
	end
end

puts