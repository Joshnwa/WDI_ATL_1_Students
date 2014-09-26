def convert(guess_card)
	case guess_card
		when "ace"
			guess_card = 1
		when "jack"
			guess_card = 11
		when "queen"
			guess_card = 12
		when "king"
			guess_card = 13 
		else
			guess_card = guess_card.to_i
	end
end

card = rand (1..13)

suit_array = ["spades", "clubs", "hearts", "diamonds"]

suit = suit_array.sample

guess_card = 0
guess_suit = 0


while ((guess_card != card) || (guess_suit != suit))
	puts "Please pick a card (blank of clubs, hearts, diamonds, spades)!!"
	user_input = gets.chomp.downcase.to_s
	input_array = user_input.split(" ")
	guess_card = input_array[0]
	guess_card = convert(guess_card)
	guess_suit = input_array[2]
	if guess_card < card
		puts "Try something higher! You suck!"
	elsif guess_card > card
		puts "Try soemthing lower, loser!"
	else puts "number right, yayy!"
	end	
	if ((guess_suit == "diamonds") && (suit == "hearts")) || ((guess_suit == "hearts") && (suit == "diamonds"))
		puts "It's red at least. ugh"
	elsif ((guess_suit == "spades") && (suit == "clubs")) || ((guess_suit == "clubs") && (suit == "spades"))
		puts "It's black at least, good job guessing in the right half stupid"
	elsif guess_suit == suit
		puts "right suit, you could do worse!"
	end
end
puts "You win!!!!"