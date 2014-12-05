require "./reservation"

class Table
  @@next_id = 0

  attr_reader :capacity, :window

  def initialize(capacity, window)
    @id = get_next_id
    @capacity = capacity
    @window = window
    @reservations = []
  end

  def available?(start_date_time, end_date_time)
    @reservations.reduce(true) { |a, r| a && !r.overlaps?(start_date_time, end_date_time) }
  end

  def make_reservation(party_name, start_date_time, end_date_time)
    @reservations << Reservation.new(party_name, start_date_time, end_date_time)
    puts "Your table has been reserved!"
  end

  def to_s
    @id.to_s + ':' + @capacity.to_s + (@window ? 'W' : '')
  end

  private

  def get_next_id
    @@next_id += 1
  end
end
