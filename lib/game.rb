
class Game
  attr_reader :players

  def initialize(player_1, player_2)
    @players = {player_1: player_1, player_2: player_2}
  end
  def attack_player(player)
    @players[player].remove_hp
  end
end
