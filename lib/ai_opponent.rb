class AiOpponent
  attr_reader :choice, :name
  def initialize
    @choice = [:rock, :paper, :scissors].sample
  end

  def name
    'computer'
  end
end
