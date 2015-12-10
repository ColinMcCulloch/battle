require 'game'



describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) {double :player}
  let(:player2) {double :player}


describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:reduce_hp)
      game.attack(player2)
    end
  end

it 'tests that player 1 has been entered as player 1 in the game' do

  expect(game.player1).to eq player1
end



end
