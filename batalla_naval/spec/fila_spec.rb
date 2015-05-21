require 'rspec'
require_relative '../model/fila.rb'


describe 'Fila' do

  before do
    @fila= Fila.new
  end

  it 'creo una fila y compruebo que no esta ocupada' do
    expect(@fila.esta_ocupada?).to be false
  end

  it 'guardo un barco en una fila y compruebo que esta ocupada' do
    @fila.guardar_barco
    expect(@fila.esta_ocupada?).to be true
  end

  it 'guardo un barco, lo saco y compruebo que la fila esta libre' do
    @fila.guardar_barco
    @fila.sacar
    expect(@fila.esta_ocupada?).to be false
  end

end