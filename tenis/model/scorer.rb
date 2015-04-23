class Scorer
  def initialize(name_player)
    @name=name_player
    @point=0
    @counter= 0
    @value=[15,30,40]
  end

  def add_point
    @point= @value[@counter]
    @counter =+ 1
  end

  def get_points
    @point.to_s
  end
end