class Scorer
  def initialize(name_player)
    @name=name_player
    @point=0
    @set= 0
    @game= 0
    @counter= 0
    @value=[15,30,40,"AD"]
  end

  def add_point(other_player)
    if  deuce?(other_player)
      other_player.subtract_points
    elsif self.win_game?(other_player)
      self.add_game
      other_player.reset_points
    else
      self.add_simple_point
    end
  end

  def deuce?(other_player)
     other_player.get_points == "AD"
  end

  def subtract_points
    @point= 40
  end

  def add_simple_point
    @point= @value[@counter]
    @counter += 1
  end

  def add_game
    @game += 1
    reset_points
  end

  def win_game?(other_player)
     win_advantage?(other_player) || @counter >= 3 && other_player.get_points < 40
  end

  def win_advantage?(other_player)
    @point.equal?("AD") && other_player == 40
  end
  def win_set?
    @game == 6
  end

  def reset_games
     @game = 0
     reset_points
  end

  def reset_points
    @point = 0
    @counter= 0
  end

  def get_games
    @game
  end

  def get_points
    @point
  end

  def get_sets
    @set
  end
end