class Disparo
  def initialize(tablero)
    @tablero=tablero
    @lista_barcos= tablero.get_barcos
    @hit= false
  end

  def dispara(nro_columna,nro_fila)
    barco_select=@lista_barcos.select{ |barco| barco.estas_en?(nro_columna, nro_fila)}
    barco_select.each { |barco| le_pegue_a_barco(barco, nro_columna, nro_fila) }
  end

  def le_pegue_a_barco(barco, nro_columna, nro_fila)
    barco.rebici_un_disparo(nro_columna, nro_fila)
    @hit=true
    @tablero.sacar_punto(nro_columna, nro_fila)
  end

  def hit?
    @hit
  end

end