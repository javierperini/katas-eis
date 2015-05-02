
class Tablero
  def initialize(columnas, filas)
    @columnas= columnas
    @filas= filas
    @lista_columnas= []
    crear_tablero
  end

  def crear_tablero()
     for i in 1..@columnas
        @lista_columnas[i]= Columna.new(@filas)
     end
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

  def crear_barco_chico(columna, fila)
      fila = get_fila_en_columna(columna, fila)
      fila.guardar_barco
  end

  def get_fila_en_columna(columna, fila)
    columna=get_columna(columna)
    columna.get_fila(fila)
  end

  def posicion_ocupada?(nro_columna,nro_fila)
      fila= get_fila_en_columna(nro_columna, nro_fila)
      fila.esta_ocupada?
  end

end