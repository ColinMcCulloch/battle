require 'forwardable'

class Game
  extend Forwardable

  def_delegator :player1, :name, :player1_name
  def_delegator :player2, :name, :player2_name
  def_delegator :player1, :hp, :player1_hp
  def_delegator :player2, :hp, :player2_hp

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def attack(player)
    player.reduce_hp
  end



end
