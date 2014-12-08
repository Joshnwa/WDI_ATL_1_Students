require "./atm"
require "./user"
require "./account"

# Composition - a user is composed of a name, a pin, and an array of accounts
user = User.new("Mike", 1234, [
  Account.new("Checking", 200.00),
  Account.new("Savings",  500.00)
])

AutomaticTellerMachine.new(user).request_loop
