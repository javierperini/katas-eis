class Fila
  def initialize
    @ocupada=false
  end

  def esta_ocupada?
    @ocupada
  end

  def guardar_barco
    @ocupada= true
  end

  def sacar
    @ocupada= @ocupada && false
  end

end