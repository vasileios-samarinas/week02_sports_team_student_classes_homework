class Team
attr_accessor :team,:players,:coach,:points

  def initialize(team,players,coach,points)
    @team=team
    @players=players
    @coach=coach
    @points=points
  end

  def team
    return @team
  end

  def players
    return @players
  end

  def coach
    return @coach
  end

  def add_new_player(footballer)
    return players.push(footballer)
  end

  def check_player_in_array(name)
    for player in players
      if player == name
        return true
      end
    end
  end


  def check_points(score)
    if score == "win"
      @points += 3
    end
    if score == "loss"
      @points = 0
    end
  end
end
