def initialize(name)
  @name = name
  @movies = []
end

def add_movie(movie)
  @movies << movie
end

def play(number_roll)
  puts "#{@name}'s playlist:"
  puts @movies
  
  @movies.each do |movie|
    movie.thumbs_up
    puts movie
  end
end