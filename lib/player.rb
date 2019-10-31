
class Player
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def remove_hp
    @hp -= 10
  end

  def attack(player)
    player.remove_hp
  end
end
