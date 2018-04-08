require 'player'

describe Player do
  subject(:player) { described_class.new('Hossman') }
  describe '.new' do
    it 'accepts a player name' do
      expect(player.name).to eq('Hossman')
    end
  end
end
