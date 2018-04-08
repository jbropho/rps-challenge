require 'game'

describe Game do
  subject(:hossman) { double(:name => :Hossman)}
  subject(:cadaver) { double(:name => :Cadaver)}
  subject(:bitterman) { double(:name => :Bitterman)}

  describe '.determine_winner' do
    it 'returns a winner paper > rock' do
      game = Game.new({ hossman => :paper, cadaver => :rock})
      expect(game.determine_winner).to eq :Hossman
    end
    it 'returns a winner paper > scissors' do
      game = Game.new({cadaver => :scissors, hossman => :paper })
      expect(game.determine_winner).to eq :Cadaver
    end
    it 'returns a winner scissors > paper' do
      game = Game.new({ bitterman => :scissors, cadaver => :paper})
      expect(game.determine_winner).to eq :Bitterman
    end
    it 'returns String(nobody) when both players make same choice' do
      game = Game.new({ hossman => :rock, cadaver => :rock})
      expect(game.determine_winner).to eq 'nobody'
    end
  end
end
