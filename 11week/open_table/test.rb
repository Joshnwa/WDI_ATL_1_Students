require "./data.rb"

open_table = make_open_table
puts "Your Open Table Restaurants:\n#{open_table}"

reserve_date_time = Time.local(2014, 12, 21, 20, 0, 0)

open_table.search("Mexican", 4, true, reserve_date_time)

results = open_table.search("Italian", 2, false, reserve_date_time)
results[0].make_reservation("Hopper", reserve_date_time, reserve_date_time + 2*3600)

open_table.search("Italian", 2, false, reserve_date_time)

puts "\nLet's try 3 hours later"
open_table.search("Italian", 2, false, reserve_date_time + 3 * 3600)
