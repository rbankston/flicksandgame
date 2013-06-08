require_relative 'player'
require_relative 'die'

module GameTurn
  def self.take_turn(player)
  die = Die.new
  case die.roll
    when 5..6
      player.w00t
    when 1..2
      player.blam
    else
      puts "#{player.name} was skipped"
    end
  end
end