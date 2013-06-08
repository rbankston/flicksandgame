require_relative 'player'
require_relative 'die'
require_relative 'game_turn'

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
      GameTurn.take_turn(player)
      puts player
    end
  end
end