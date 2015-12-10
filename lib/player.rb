class Player

  STARTING_HP = 77

attr_reader :name, :hp

  def initialize(name)

    @name = name
    @hp = STARTING_HP

  end

  def attack(player)
    player.reduce_hp
  end

  def reduce_hp
    @hp -= 10
  end

end
