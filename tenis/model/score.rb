class Score
  def initialize(player_1,player_2)
    @scorer_1= Scorer.new(player_1)
    @scorer_2= Scorer.new(player_2)
  end
  def get_result
     "point("+get_point+") games("+get_game+") set("+get_set+")"
  end

  def get_set
    @scorer_1.get_sets.to_s+"-"+@scorer_2.get_sets.to_s
  end
  def get_game
    @scorer_1.get_games.to_s+"-"+@scorer_2.get_games.to_s
  end

  def get_point
    @scorer_1.get_points.to_s+"-"+@scorer_2.get_points.to_s
  end

  def point_player_1
    @scorer_1.add_point(@scorer_2)
  end

  def point_player_2
    @scorer_2.add_point(@scorer_1)
  end

end