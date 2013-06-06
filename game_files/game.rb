require_relative 'player'
require_relative 'die'

class Game
  def initialize(title)
    @title = title
    @players = []
  end
  
  def add_player(a_player)
    @players.push(a_player)
  end
  
  attr_reader :title
  
  def play
    puts "There are #{@players.count} in #{title}: "
    @players.each do |player| 
      puts player
    end 
    @players.each do |player|
      die = Die.new
      number_rolled = die.roll
      
    if number_rolled >= 5
      player.w00t
    elsif number_rolled <= 2
      player.blam
    else
      puts "#{player.name} was skipped"
    end
    puts player
    end
  end
end