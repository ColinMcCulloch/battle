require 'player'
describe Player do
subject(:player1) { described_class.new("Col") }
subject(:player2) { described_class.new("Jon")}



describe '#name' do
  it "displays name" do
    expect(player1.name).to eq "Col"
  end
end

describe '#hp' do
  it 'displays starting hp' do
  expect(player1.hp).to eq Player::STARTING_HP
  end
end

describe '#attack' do
  it 'reduces hp by 10' do
    expect{ player1.attack(player2) }.to change{ player2.hp }.by(-10)
  end
end

end
