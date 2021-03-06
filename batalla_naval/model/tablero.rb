class Tablero
  def initialize(columnas, filas)
    @columnas= columnas
    @filas= filas
    @lista_columnas= []
    @lista_barcos=[]
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

  def get_nro_filas
    @filas
  end

  def get_columna(nro_columna)
    @lista_columnas[nro_columna]
  end

  def crear_barco_chico(columna, fila)
    if estoy_en_posicion_invalida?(columna,fila) || posicion_ocupada?(columna,fila)
      raise "Posicion fuera del tablero"
    end
    @lista_barcos.push(BarcoChico.new(columna,fila))
    columna= get_columna(columna)
    columna.guardar_barco_chico_en(fila)
  end

  def estoy_en_posicion_invalida?(columna,fila)
      @columnas < columna || @filas < fila  || 0 > columna || 0 > fila
  end

  def crear_barco_grande(columna, fila)
    if posicion_invalida_barco_grande?(columna, fila)
      raise "Posicion fuera del tablero"
    end
    @lista_barcos.push(BarcoGrande.new(columna,fila))
    columna= get_columna(columna)
    columna.guardar_barco_grande_en(fila,fila+1)
  end

  def posicion_invalida_barco_grande?(columna, fila)
    estoy_en_posicion_invalida?(columna, fila) || posicion_ocupada?(columna, fila+1) || posicion_ocupada?(columna,fila)
  end

  def sacar_punto(nro_columna, nro_fila)
    columna= get_columna(nro_columna)
    columna.sacar_punto_fila(nro_fila)
  end

  def posicion_ocupada?(nro_columna,nro_fila)
    columna= get_columna(nro_columna)
    columna.esta_ocupada_en?(nro_fila)
  end

  def disparar_posicion(nro_columna, nro_fila)
    @disparo_actual= Disparo.new(self)
    @disparo_actual.dispara(nro_columna,nro_fila)
    @disparo_actual.estado
  end

  def es_hit?
    @disparo_actual.hit?
  end

  def es_miss?
    @disparo_actual.miss?
  end

  def hundi_barco?()
    @disparo_actual.sink?
  end
end