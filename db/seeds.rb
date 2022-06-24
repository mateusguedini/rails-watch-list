require 'open-uri'

url = "https://api.themoviedb.org/3/movie/top_rated?api_key= https://api.themoviedb.org/3/account?api_key=#{ENV['THE_MOVIE_DB_KEY']}&language=en-US&page=1"

movie_data = JSON.parse(URI.open(url).read)['results']

movie_data.each do |movie|
  Movie.create!(
    title: movie['title'],
    overview
  )
