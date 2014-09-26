suit_array = ["h", "d", "s", "c"]
num_array = ["a"]
for x in 2..10
	num_array.push(x.to_s)
end
num_array.push("j", "q", "k")
suit_ans = suit_array.sample
num_ans = num_array.sample

puts "Pick a card-- choose the suit (h, c, s, d): "
	user_suit = gets.chomp.downcase

puts "Pick a number (a, 2- 10, j, q, k): "
	user_num = gets.chomp.downcase

if num_array.index(user_num) == num_array.index(num_ans)
	if suit_ans == suit_array
		puts "You win!"
	else
		puts "Your number is correct but your suit is incorrect"
	end
elsif num_array.index(user_num) > num_array.index(num_ans)
	if suit_ans == suit_array
		puts "Your card was too high but your suit was correct"
	else
		puts "Your card is too high and your suit is incorrect"
	end
else
	if suit_ans == suit_array
		puts "Your card was too low but your suit was correct"
	else
		puts "Your card is too low and your suit is incorrect"
	end
end