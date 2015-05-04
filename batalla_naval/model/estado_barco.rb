class EstadoBarco
  def initialize(barco)
    @barco=barco
  end

  def rebici_un_disparo(nro_columna,nro_fila)
    if @barco.get_fila == nro_fila
      @barco.set_fila(@fila_final)
    end
    @barco.set_estado(Averiado.new(@barco))
  end

end

class Entero<EstadoBarco
  def initialize(barco)
    super(barco)
  end

end

class Averiado<EstadoBarco
  def initialize(barco)
    super(barco)
  end

  def rebici_un_disparo(nro_columna,nro_fila)
    @barco.set_hundido(@barco.estas_en?(nro_columna,nro_fila))
  end
end