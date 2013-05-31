require_relative "movie"
movie1 = Movie.new("goonies", 100)
movie2 = Movie.new("ghostbuster", 9)

puts movie1
puts movie2
movie1.thumbs_up
movie1.title = "Gooneys!"

puts movie1.normalized_rank