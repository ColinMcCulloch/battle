require 'player'
describe Player do
subject(:player) { described_class.new("Col") }



describe '#name'
  it "displays name" do
    expect(player.name).to eq "Col"
  end
end
