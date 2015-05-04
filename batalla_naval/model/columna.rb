class Columna

  def initialize(filas)
    @lista_filas=[]
    crear_filas(filas)
   end

  def crear_filas(filas)
    for i in 1..filas
      @lista_filas[i]= Fila.new
    end
  end

  def get_fila(nro_fila)
    @lista_filas[nro_fila]
  end

  def guardar_barco_chico_en(fila)
     get_fila(fila).guardar_barco
  end

  def guardar_barco_grande_en(fila_ini, fila_fin)
    get_fila(fila_ini).guardar_barco
    get_fila(fila_fin).guardar_barco
  end

  def esta_ocupada_en?(nro_fila)
    get_fila(nro_fila).esta_ocupada?
  end

  def sacar_punto_fila(nro_fila)
    get_fila(nro_fila).sacar
  end

end