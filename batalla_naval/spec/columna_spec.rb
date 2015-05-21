require 'rspec'
require_relative '../model/columna.rb'
require_relative '../model/fila.rb'

describe 'Columna' do

  before do
    @columna= Columna.new(5)
    @columna.guardar_barco_grande_en(3,4)
  end

  it 'Compruebo la cantidad de filas que tiene la columna' do
    expect(@columna.get_filas).to eq 5
  end

  it 'guardo un barco chico y compruebo que la fila esta ocupada' do
    @columna.guardar_barco_chico_en(2)
    expect(@columna.esta_ocupada_en?(2)).to be true
  end

  it 'guardo un barco grande y compruebo que la fila incial esta ocupada' do
    expect(@columna.esta_ocupada_en?(3)).to be true
  end

  it 'guardo un barco grande y compruebo que la fila final esta ocupada' do
    expect(@columna.esta_ocupada_en?(4)).to be true
  end

  it 'saco un barco y compruebo que la fila esta libre' do
    @columna.sacar_punto_fila(3)
    expect(@columna.esta_ocupada_en?(3)).to be false
  end

end