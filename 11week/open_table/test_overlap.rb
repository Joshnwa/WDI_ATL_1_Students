require './reservation'

start_date_time = Time.local(2014, 12, 21, 20, 0, 0)
end_date_time   = start_date_time + 2*3600

puts Reservation.new("Hopper", start_date_time, end_date_time)
.overlaps?(start_date_time + 1*3600, start_date_time + 3*3600)

puts Reservation.new("Hopper", start_date_time, end_date_time)
.overlaps?(start_date_time - 3*3600, start_date_time - 1*3600)
