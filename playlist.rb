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

  def play
    puts "#{@name}'s playlist:"
    
    puts @movies
  
    @movies.each do |movie|
      WaldorfAndStatler.review(movie)
      puts movie
    end
  end
end