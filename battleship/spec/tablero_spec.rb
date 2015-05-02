require 'rspec'
require_relative '../model/tablero.rb'
require_relative '../model/columna.rb'
require_relative '../model/fila.rb'

describe 'Tablero' do
  before do
    @tablero= Tablero.new(5,5)
    @tablero.crear_barco_grande(2,1)
  end

  it 'compruebo que la cantidad de columnas del tablero es 5' do
    expect(@tablero.get_columnas).to eq 5
  end

  it 'compruebo que la cantidad de filas del tablero es 5' do
    expect(@tablero.get_filas).to eq 5
  end

  it 'crear un barco chico y comprobar que una posicion esta ocupada' do
    @tablero.crear_barco_chico(5,1)
    expect(@tablero.posicion_ocupada?(5,1)).to be true
  end

  it 'crear un barco grande y comprobar que su posicion inicial esta ocupada' do
    @tablero.crear_barco_grande(5,1)
    expect(@tablero.posicion_ocupada?(5,1)).to be true
  end

  it 'crear un barco grande y comprobar que su posicion final esta ocupada' do
    @tablero.crear_barco_grande(5,1)
    expect(@tablero.posicion_ocupada?(5,2)).to be true
  end

  it 'disparar a una posicion y retornar un hit' do
    @tablero.disparar_posicion(2,1)
    expect(@tablero.es_hit).to eq 1
  end



end