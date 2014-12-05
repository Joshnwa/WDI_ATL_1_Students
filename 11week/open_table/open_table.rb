class OpenTable
  def initialize(restaurants)
    @restaurants = restaurants
  end

  def search(cuisine, party_size, window, reserve_date_time)
    window_message = window ? " with window" : ""
    puts "\nSearching #{cuisine} for party of #{party_size}#{window_message} at #{reserve_date_time} : "
    matching_restaurants = @restaurants.select do |restaurant|
      restaurant.cuisine == cuisine
    end
    tables = []
    matching_restaurants.each do |restaurant|
      tables += restaurant.search(party_size, window, reserve_date_time)
    end
    puts "Search results: " + (tables.length > 0 ? tables.join(", ") : "<None>")
    tables
  end

  def to_s
    @restaurants.join("\n")
  end
end
