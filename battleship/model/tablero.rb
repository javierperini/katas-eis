
class Tablero
  def initialize(columnas, filas)
    @columnas= columnas
    @filas= filas
    @lista_columnas= []
    @hit=0
    @lista_barcos= []
    crear_tablero
  end

  def crear_tablero()
    for i in 1..@columnas
       @lista_columnas[i]=Columna.new(@filas)
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
    @lista_barcos += [BarcoChico.new(columna,fila)]
    columna= get_columna(columna)
    columna.guardar_barco_chico_en(fila)
  end

  def crear_barco_grande(columna, fila)
    @lista_barcos += [BarcoGrande.new(columna,fila)]
    columna= get_columna(columna)
    columna.guardar_barco_grande_en(fila,fila+1)
  end

  def posicion_ocupada?(nro_columna,nro_fila)
      columna= get_columna(nro_columna)
      columna.esta_ocupada_en?(nro_fila)
  end

  def disparar_posicion(nro_columna, nro_fila)
    columna= get_columna(nro_columna)
    @hit += columna.disparar_fila(nro_fila)
  end

  def es_hit()
    @hit
  end

  def hundi_barco?()
    @cant_barcos_actual < @cant_barcos_total
  end


end