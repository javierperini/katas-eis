class CharCounter
  def initialize
    @dic = Hash.new
  end

  def count(clave)
    @dic[clave] = 1
    @dic
  end
end