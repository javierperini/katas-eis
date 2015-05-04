class Barco
  def initialize(columna,fila)
    @columna= columna
    @fila=fila
    @hundido=false
  end

  def estas_en?(nro_columna, nro_fila)
    @columna == nro_columna && @fila ==nro_fila
  end

  def rebici_un_disparo(nro_columna,nro_fila)
    @hundido=estas_en?(nro_columna, nro_fila)
  end

end

class BarcoChico<Barco
  def initialize(columna,fila)
    super(columna,fila)
  end
end

class BarcoGrande<Barco
  def initialize(columna,fila)
    super(columna,fila)
    @fila_final= fila+1
  end
end