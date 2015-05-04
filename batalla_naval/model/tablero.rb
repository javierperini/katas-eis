class Tablero
  def initialize(columnas, filas)
    @columnas= columnas
    @filas= filas
    @lista_columnas= []
    crear_tablero
  end

  def crear_tablero()
    for i in 1..@columnas
       @lista_columnas[i]=Columna.new(@filas)
    end
  end

  def get_barcos
    @lista_barcos
  end
  def get_columnas
    @columnas
  end

  def get_filas
    @filas
  end

  def get_columna(nro_columna)
    @lista_columnas[nro_columna]
  end
end