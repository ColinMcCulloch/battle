require 'game'



describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) {double :player1}
  let(:player2) {double :player2}


describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:reduce_hp)
      game.attack(player2)
    end
  end

it 'tests that player 1 has been entered as player 1 in the game' do

  expect(game.player1).to eq player1
end

describe '#current_player' do
  it 'returns player1 as default player' do
    expect(game.current_player).to eq player1
  end
end

describe '#switch_player' do
  it 'switches player' do
    game.current_player
    game.switch_player
    expect(game.current_player).to eq player2
  end
end

describe '#other_player' do
  it 'returns player2 as default other player' do
    expect(game.other_player).to eq player2
  end

  it 'returns player1 as other player, after having changed turn' do
    game.switch_player
    expect(game.other_player).to eq player1
  end
end

describe '#game_over?' do
  it 'returns false when not game_over' do
    allow(player1).to receive(:hp) {100}
    allow(player2).to receive(:hp) {100}
    expect(game.game_over?).to eq false
  end
  it 'returns true when game_over' do
    allow(player1).to receive(:hp) {100}
    allow(player2).to receive(:hp) {0}
    expect(game.game_over?).to eq true
  end
end




end
