# suits_array = ["Hearts", "Clubs", "Spades", "Diamonds"]
# counter = 0
# card = rand["0", "1", "2", "3", "4", "5", "6", "7", "8", "9" + "Jack (11)" + "Queen(12)" + "King(13)" + "Ace(1)"
# suit = rand(suits_array[i])




#     x=12 but value(12) = "Jack", 12 will not == "Jack"

def random(x,y)

	$values = rand(0..13)
	$suits = rand(4) 

	case $suits
		when 0
	    	$suits = "Spades"
		when 1
			$suits = "Hearts"
		when 2
			$suits =  "Clubs"
		when 3
			$suits = "Diamonds"
	end

	puts "Pick a card number from 1 to 14."
	x = gets.chomp.to_i
	puts "Pick a suit (hearts, clubs, spades, diamonds)."
	y = gets.chomp.to_s.capitalize
		

	if $values == x && $suits == y
			puts "You guessed right. The card number is #{card} of #{suit}."
	# f (!(typeof Sound == 'undefined')) {
	#   Sound.play('/sounds/'+somestring+'.mp3', {replace: true});
	# }
		else
			puts "You guessed wrong. Try again."
		exit

		if $values == x && $suits != y
			puts "You guessed the number right, but the suit wrong. Guess again."
		end
		if $values !=x && $suits == y
			puts "You guessed the suit right, but the number wrong. Guess again."
		end 
	end
end
random($values, $suits)