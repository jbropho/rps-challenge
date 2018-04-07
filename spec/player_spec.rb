require 'player'

describe Player do
  subject(:player) { described_class.new('Hossman') }
  describe '.new' do
    it 'accepts a player name' do
      expect(player.name).to eq('Hossman')
    end
    it 'initialises with a score of 0' do
      expect(player.score).to eq 0
    end
  end
end
