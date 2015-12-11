require 'forwardable'

class Game
  extend Forwardable

  def_delegator :player1, :name, :player1_name
  def_delegator :player2, :name, :player2_name
  def_delegator :player1, :hp, :player1_hp
  def_delegator :player2, :hp, :player2_hp

  attr_reader :player1, :player2, :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def attack(player)
    player.reduce_hp
  end

  def switch_player
    @current_player = other_player
  end

  def other_player
    @current_player == player1 ? player2 : player1
  end

end
