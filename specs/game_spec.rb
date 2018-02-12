require("minitest/autorun")
require("minitest/rg")
require_relative("../models/game.rb")

class TestGame < MiniTest::Test

  # def test_paper_beats_rock
  #
  #   game1 = Game.new("paper", "rock")
  #   game2 = Game.new("rock", "paper")
  #   assert_equal('paper beats rock!', game1.play)
  #   assert_equal('paper beats rock!', game2.play)
  #
  # end
  #
  # def test_scissors_beats_paper
  #
  #   game1 = Game.new("scissors", "paper")
  #   game2 = Game.new("paper", "scissors")
  #   assert_equal('scissors beats paper!', game1.play)
  #   assert_equal('scissors beats paper!', game2.play)
  #
  # end
  #
  # def test_rock_beats_scissors
  #
  #   game1 = Game.new("rock", "scissors")
  #   game2 = Game.new("scissors", "rock")
  #   assert_equal('rock beats scissors!', game1.play)
  #   assert_equal('rock beats scissors!', game2.play)
  #
  # end
  #
  # def test_draw
  #
  #   game1 = Game.new("rock", "rock")
  #   game2 = Game.new("scissors", "scissors")
  #   game3 = Game.new("paper", "paper")
  #   assert_equal("Draw!", game1.play)
  #   assert_equal("Draw!", game2.play)
  #   assert_equal("Draw!", game3.play)
  #
  # end




  def test_paper_rock__player_one_wins

    game1 = Game.new("paper", "rock")
    assert_equal("Player 1 wins!", game1.play)

  end

  def test_rock_paper__player_two_wins

    game1 = Game.new("rock", "paper")
    assert_equal("Player 2 wins!", game1.play)

  end

  def test_rock_scissors__player_one_wins

    game1 = Game.new("rock", "scissors")
    assert_equal("Player 1 wins!", game1.play)

  end

  def test_scissors_rock__player_two_wins

    game1 = Game.new("scissors", "rock")
    assert_equal("Player 2 wins!", game1.play)

  end

  def test_scissors_paper__player_one_wins

    game1 = Game.new("scissors", "paper")
    assert_equal("Player 1 wins!", game1.play)

  end

  def test_paper_scissors__player_two_wins

    game1 = Game.new("paper", "scissors")
    assert_equal("Player 2 wins!", game1.play)

  end

  def test_paper_paper__draw

    game1 = Game.new("paper", "paper")
    assert_equal("You both picked paper. Draw!", game1.play)

  end

  def test_scissors_scissors__draw

    game1 = Game.new("scissors", "scissors")
    assert_equal("You both picked scissors. Draw!", game1.play)

  end

  def test_rock_rock__draw

    game1 = Game.new("rock", "rock")
    assert_equal("You both picked rock. Draw!", game1.play)

  end

end
