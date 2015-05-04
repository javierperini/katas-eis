class Barco
  def initialize(columna,fila)
    @columna= columna
    @fila=fila
  end
end

class BarcoChico<Barco
  def initialize(columna,fila)
    super(columna,fila)
  end
end
