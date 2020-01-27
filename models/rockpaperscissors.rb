class RockPaperScissors

attr_accessor :player1, :player2

  def initialize(player1, player2)
      @player1 = player1
      @player2 = player2
    end

    def playing_game
      return @player1 if (@player1 == "rock" && @player2 == "scissors") || (@player1 == "scissors" && @player2 == "paper") || (@player1 == "paper" && @player2 == "rock")
      return @player2 if (@player1 == "rock" && @player2 == "paper") || (@player1 == "scissors" && @player2 == "rock") || (@player1 == "paper" && @player2 == "scissors")
      return "Its a draw" if @player1 == @player2
      return "Ooooooops! Please enter one of the following 'rock, paper or scissors' "
    end

    def return_winner
      return "Player 1" if (@player1 == "rock" && @player2 == "scissors") || (@player1 == "scissors" && @player2 == "paper") || (@player1 == "paper" && @player2 == "rock")
      return "Player 2" if (@player1 == "rock" && @player2 == "paper") || (@player1 == "scissors" && @player2 == "rock") || (@player1 == "paper" && @player2 == "scissors")
      return "nobody" if @player1 == @player2
      return "nobody"
    end

end


#Below won't work as we are looking for two inputs, possible to build with a case statement?

# def self.compare
# # r = Rock, p = Paper and s = Scissors
#   r_wins_if_v_s = true
#   r_draws_if_v_r = true
#   r_loses_if_v_p = true
#   p_wins_if_v_r = true
#   p_draws_if_v_p = true
#   p_loses_if_v_s = true
#   s_wins_if_v_p = true
#   s_draws_if_v_s = true
#   s_loses_if_v_r = true
#
#   p "Rock Wins!" if r_wins_if_v_s && s_loses_if_v_r
#   p "Paper Wins!" if p_wins_if_v_r && r_loses_if_v_p
#   p "Scissors Win!" if s_wins_if_v_p && p_loses_if_v_s
# end
