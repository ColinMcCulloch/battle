require 'game'



describe Game do
  let(:player1) {double :player1}
  let(:player2) {double :player2}


  describe '#attack' do
    it {is_expected.to respond_to :attack }
  end

describe '#attack' do
    it 'damages the player' do
      game = Game.new
      expect(player2).to receive(:reduce_hp)
      game.attack(player2)
    end
  end

end
