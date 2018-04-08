class Game
  attr_reader :player1, :player2, :victor
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def determine_winner
    @victor = winner.name
    @victor = 'nobody' if draw?
    @victor
  end

  private
  def draw?
     player1.choice == player2.choice
  end

  def winner
    case player1.choice
    when :rock then player2.choice == :scissors ? @player1 : @player2
    when :paper then player2.choice == :rock ? @player1 : @player2
    when :scissors then player2.choice == :paper ? @player1 : @player2
    end
  end
end
