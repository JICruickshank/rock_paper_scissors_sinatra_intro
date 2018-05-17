class Game

  def initialize(player1, player2)

    @player1 = player1
    @player2 = player2

  end

  def play

    # if (@item1 == "rock" && @item2 == "paper") || (@item2 == "rock" && @item1 == "paper")
    #   return "paper beats rock!"
    # elsif (@item1 == "scissors" && @item2 == "paper") || (@item2 == "scissors" && @item1 == "paper")
    #   return "scissors beats paper!"
    # elsif (@item1 == "rock" && @item2 == "scissors") || (@item2 == "rock" && @item1 == "scissors")
    #   return "rock beats scissors!"
    # elsif @item1 == @item2
    #   return "Draw!"
    # end

    game_string = "#{@player1}#{@player2}"
    a = 'paper'
    b = 'rock'
    c = 'scissors'
    player_one_win = "Player 1 wins!"
    player_two_win = "Player 2 wins!"
    draw = "You both picked #{@player1}. Draw!"

    outcome = Hash.new
    outcome[a + b] = player_one_win
    outcome[b + a] = player_two_win   
    outcome[b + c] = player_one_win
    outcome[c + b] = player_two_win
    outcome[c + a] = player_one_win
    outcome[a + c] = player_two_win
    outcome[@player1 + @player1] = draw

    return outcome[game_string]

  end

end
