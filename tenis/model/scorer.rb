class Scorer
  def initialize(name_player)
    @name=name_player
    @point=0
    @game= 0
    @counter= 0
    @value=[15,30,40]
  end

  def add_point
    if @counter==3
      @counter= 0
      @point= 0
      @game+= 1
    else
      @point= @value[@counter]
      @counter += 1
    end
  end
  def get_games
    @game.to_s
  end
  def get_points
    @point.to_s
  end
end