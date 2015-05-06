require 'rspec'
require_relative '../model/tablero.rb'
require_relative '../model/columna.rb'
require_relative '../model/fila.rb'
require_relative '../model/barco.rb'
require_relative '../model/disparo.rb'
require_relative '../model/estado_barco.rb'

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
    expect(@tablero.es_hit?).to be true
  end

  it 'disparar a una posicion y  retornar un miss' do
    @tablero.disparar_posicion(2,5)
    expect(@tablero.es_miss?).to be true
  end

  it 'disparar hasta hundir un barco y retornar un sink' do
    @tablero.disparar_posicion(2,2)
    @tablero.disparar_posicion(2,1)
    expect(@tablero.hundi_barco?).to be true
  end

  it 'creo un barco chico  afuera del tablero (6,6) y salta una exception' do
    expect{@tablero.crear_barco_chico(6,6)}.to raise_error
  end

  it 'creo un barco chico en una posicion invalida (0,0) y salta una exception' do
    expect{@tablero.crear_barco_chico(0,0)}.to raise_error
  end

  it 'creo un barco chico en una posicion ocupada y salta una exception' do
    expect{@tablero.crear_barco_chico(2,1)}.to raise_error
  end

  it 'creo un barco grande en una posicion ocupada y salta una exception' do
    @tablero.crear_barco_grande(3,2)
    expect{@tablero.crear_barco_grande(3,3)}.to raise_error
  end

  it 'disparo fuera del tablero  y salta una exception' do
    expect{@tablero.disparar_posicion(6,6)}.to raise_error
  end
end

