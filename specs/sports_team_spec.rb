require('minitest/autorun')
require('minitest/reporters')

require_relative("../sports_team.rb")
Minitest::Reporters.use!Minitest::Reporters::SpecReporter.new

class SportsTeam < Minitest::Test

  def setup
    @sportsteam=Team.new("Liverpool",["Mane","Coutinho"],"Klopp",0)
  end

  def test_team
    assert_equal("Liverpool",@sportsteam.team)
  end

  def test_players
    assert_equal(["Mane","Coutinho"],@sportsteam.players)
  end

  def test_coach
    assert_equal("Klopp",@sportsteam.coach)
  end

  def test_set_team
  @sportsteam.team ="Paris"
  assert_equal("Paris",@sportsteam.team)
  end

  def test_set_players
  @sportsteam.players =["Di Maria","Cavani"]
  assert_equal(["Di Maria","Cavani"],@sportsteam.players)
  end

  def test_set_coach
  @sportsteam.coach ="Tuchel"
  assert_equal("Tuchel",@sportsteam.coach)
  end

  def test_add_new_player
  assert_equal(["Mane","Coutinho","Van Dijk"],@sportsteam.add_new_player("Van Dijk"))
  end

  def test_check_player_in_array
    @sportsteam.check_player_in_array("Mane")
    assert_equal(true,@sportsteam.check_player_in_array("Mane"))
  end

  def test_points__win
    @sportsteam.check_points("win")
    assert_equal(3,@sportsteam.points)
  end

end
