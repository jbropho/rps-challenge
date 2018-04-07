require 'game'
require 'pry'

describe Game do
  subject(:game_one) { described_class.new({:Hossman => :rock, :Cadaver => :paper}) }
  subject(:game_two) { described_class.new({:Hossman => :paper, :Cadaver => :scissors}) }
  subject(:game_three) { described_class.new({:Hossman => :scissors, :Cadaver => :paper}) }
  subject(:game_draw) { described_class.new({:Hossman => :rock, :Cadaver => :rock}) }

  describe '.new' do
    it 'accepts an options hash' do
      expect{ Game.new({:Hossman => :rock, :Cadaver => :paper}) }.not_to \
      raise_error
    end
  end
  describe '.determine_winner' do
    it 'returns a winner rock > paper' do
      expect(game_one.determine_winner).to eq :Cadaver
    end
    it 'returns a winner paper > scissors' do
      expect(game_two.determine_winner).to eq :Cadaver
    end
    it 'returns a winner scissors > paper' do
      expect(game_three.determine_winner).to eq :Hossman
    end
    it 'returns draw when both players make same choice' do
      expect(game_draw.determine_winner).to eq :draw
    end
  end
end
