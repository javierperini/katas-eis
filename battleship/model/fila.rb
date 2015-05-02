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

  def disparar
    if(@ocupada && true)
      return 1
    end
    0
  end

end