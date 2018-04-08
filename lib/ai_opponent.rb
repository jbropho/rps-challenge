class AiOpponent
  attr_reader :choice, :name
  def initialize
    @choice = [:rock, :paper, :scissors].sample
    @name = 'computer'
  end
end
