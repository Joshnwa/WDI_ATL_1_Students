class Page < ActiveRecord::Base

	def self.party(movie)
		movie ||= "matrix"

		auth = { query: { apikey: 'q6ehu3bcz92vd8yqx2m68247', q: movie }}
		# q = movie
		# page_limit = 1
		search_url = "http://api.rottentomatoes.com/api/public/v1.0/movies.json"
		
		response = HTTParty.get search_url, auth

		auth = { query: { apikey: 'q6ehu3bcz92vd8yqx2m68247' }}
		id = response["movies"][0]["id"]
		# id = '770672122'
		movie_url = "http://api.rottentomatoes.com/api/public/v1.0/movies/#{id}.json"

		response = HTTParty.get movie_url, auth
		
	end
end