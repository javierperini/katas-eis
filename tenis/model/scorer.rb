class Scorer
  def initialize(name_player)
    @name=name_player
    @point=0
    @game= 0
    @counter= 0
    @value=[15,30,40]
  end
  def add_point(other_player)
    if  self.win_game?
      self.add_game
      other_player.reset_points
    else
      self.add_simple_point
    end
  end
  def add_simple_point
    @point= @value[@counter]
    @counter += 1
  end

  def add_game
    @game += 1
    reset_points
  end

  def win_game?
    @counter == 3
  end
  def reset_points
    @point = 0
    @counter= 0
  end

  def get_games
    @game.to_s
  end
  def get_points
    @point.to_s
  end
end