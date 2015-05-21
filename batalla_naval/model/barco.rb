class Barco
  def initialize(columna,fila)
    @columna= columna
    @fila=fila
    @hundido=false
  end

  def rebici_un_disparo(nro_columna,nro_fila)
    @hundido=estas_en?(nro_columna, nro_fila)
  end

  def get_fila
    @fila
  end

  def set_fila(nro_fila)
    @fila=nro_fila
  end

  def estas_en?(nro_columna, nro_fila)
    @columna == nro_columna && @fila ==nro_fila
  end

  def set_hundido(boolean)
    @hundido=boolean
  end

  def me_hundieron?
    @hundido
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
    @estado= Entero.new(self)
  end

  def rebici_un_disparo(nro_columna,nro_fila)
    @estado.rebici_un_disparo(nro_columna,nro_fila)
  end

  def set_estado(estado_barco)
    @estado= estado_barco
  end

  def get_estado()
    @estado
  end

  def estas_en?(nro_columna, nro_fila)
    @columna == nro_columna && @fila ==nro_fila || @fila_final==nro_fila
  end
end