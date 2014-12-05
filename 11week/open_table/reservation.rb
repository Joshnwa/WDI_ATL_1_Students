class Reservation
  def initialize(party_name, start_date_time, end_date_time)
    @party_name = party_name
    @start_date_time = start_date_time
    @end_date_time = end_date_time
  end

  def overlaps?(start_date_time, end_date_time)
    # The easy way to solve this is to test for non-overlap and then invert the result
    ! (end_date_time < @start_date_time || start_date_time > @end_date_time)
  end
end
