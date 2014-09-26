pin = "1234" 
user_pin = ""
until pin == user_pin    do
puts "welcome to bank of G.A, please input your pin to access your bank!"
user_pin = gets.chomp
end

balance = 100
loop do
puts "Balance Deposit Withdraw Quit"
input = gets.chomp.capitalize

case input
when "Quit"
then 
puts "Goodbye"
exit
when "Balance"
then 
puts "Your balance is #{balance}"
when "Deposit"
puts "How much money do you want to deposit?"
deposit_money = gets.chomp.to_i
balance += deposit_money
puts "Your total is $ #{balance}"
when "Withdraw"
puts "How much do you want to withdraw?" 
withdraw_money = gets.to_i
balance -= withdraw_money

if withdraw_money > balance
puts "You are out of money fool!!"
balance -= withdraw_money*0.05
puts "Your total is $#{balance}"

else
puts "Your total is $ #{balance}"

end
end
end


