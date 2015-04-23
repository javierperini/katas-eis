class Score
  def initialize(player_1,player_2)
    @scorer_1=Scorer.new(player_1)
    @scorer_2=Scorer.new(player_2)
  end
  def get_result
     "point("+@scorer_1.get_points+"-"+@scorer_2.get_points+") games("+@scorer_1.get_games+"-"+@scorer_2.get_games+") set(0-0)"
  end

  def point_player_1
    if  @scorer_1.win_game?
        @scorer_1.add_game
        @scorer_2.reset_points
    else
      @scorer_1.add_point
    end

  end

  def point_player_2
    @scorer_2.add_point
  end

end