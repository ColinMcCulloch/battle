require_relative 'game'

class Player

  STARTING_HP = 77

attr_reader :name, :hp

  def initialize(name)

    @name = name
    @hp = STARTING_HP

  end

  def reduce_hp
    @hp -= 10
  end

end
