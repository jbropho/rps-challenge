require 'game'

describe Game do
  subject(:hossman) { double(:name => :Hossman, :choice => :paper)}
  subject(:cadaver) { double(:name => :Cadaver, :choice => :rock)}
  subject(:bitterman) { double(:name => :Bitterman, :choice => :scissors)}
  subject(:grunt) { double(:name => :Grunt, :choice => :rock)}

  describe '.determine_winner' do
    it 'returns a winner paper > rock' do
      game = Game.new(hossman, cadaver)
      expect(game.determine_winner).to eq :Hossman
    end
    it 'returns a winner scissors > paper' do
      game = Game.new(bitterman, hossman)
      expect(game.determine_winner).to eq :Bitterman
    end
    it 'returns a winner rock > scissors' do
      game = Game.new(cadaver, bitterman)
      expect(game.determine_winner).to eq :Cadaver
    end
    it 'returns String(nobody) when both players make same choice' do
      game = Game.new(grunt, cadaver)
      expect(game.determine_winner).to eq 'nobody'
    end
  end
end
