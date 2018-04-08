require 'ai_opponent'

describe AiOpponent do
  describe '.choice' do
    it 'returns a symbol of rock, paper or scissors' do
      expect([:rock, :paper, :scissors]).to include subject.choice
    end
  end
  describe '.name' do
    it 'returns String(computer)' do
      expect(subject.name).to eq 'computer'
    end
  end
end
