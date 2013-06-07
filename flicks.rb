require_relative "movie"
require_relative "playlist"
movie1 = Movie.new("goonies", 100)
movie2 = Movie.new("ghostbuster", 9)
movie3 = Movie.new("goldfinger")

playlist = Playlist.new("Kermit")
playlist.add_movie(movie1)
playlist.add_movie(movie2)
playlist.add_movie(movie3)
playlist.play