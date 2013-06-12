require_relative 'movie'
require_relative 'Waldorf_And_Statler'

class Playlist

  attr_reader :name

  def initialize(name)
    @name = name
    @movies = []
  end

  def add_movie(a_movie)
    @movies << a_movie
  end


  def print_stats
    puts "\n#{@names}'s Stats:"
  
    hits, flops = @movies.partition { |movie| movie.hit? }
  
    puts "\nHits:"
    puts hits
  
    puts "\nFlops:"
    puts flops
  end 
  
  def play(viewing)
    puts "#{@name}'s playlist:"
    
    puts @movies
    1.upto(viewing) do |count|
      puts "\nViewing #{count}:"
      @movies.each do |movie|
        WaldorfAndStatler.review(movie)
        puts movie
      end
    end
  end
end
