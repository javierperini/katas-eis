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


end