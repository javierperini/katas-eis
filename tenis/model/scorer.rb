class Scorer
  def initialize(name_player)
    @name=name_player
    @point=0
  end
  def add_point
    @point= 15
  end
  def get_points
    @point.to_s
  end
end