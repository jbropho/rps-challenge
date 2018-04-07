class Game
  attr_reader :choices, :options
  def initialize(options)
    @options = options
    @player1 = options.keys[0]
    @player2 = options.keys[1]
  end

  def determine_winner
    return :draw if draw?
    winner
  end

  private
  def draw?
     options[@player1] == options[@player2]
  end

  def winner
    case options[@player1]
    when :rock then options[@player2] == :scissors ? @player1 : @player2
    when :paper then options[@player2] == :rock ? @player1 : @player2
    when :scissors then options[@player2] == :paper ? @player1 : @player2
    end
  end
end
