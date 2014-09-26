puts "please enter pin"
pintry = gets.chomp

user1 = "1234"
balance1 = 5800


if pintry != user1
puts "Pin incorrect, please try again"
else 
puts "Great! your balance today is #{balance1}"
end

puts "how much would you like to withdrawal?"
userwithdrawal = gets.chomp

if userwithdrawal.to_i >= balance1
puts "Uh oh, you will be charged a 5% overdraft fee!"
else
puts "Great, no fee will be charged today"
end