require 'rspec'
require_relative '../model/tablero.rb'
require_relative '../model/columna.rb'
require_relative '../model/fila.rb'
require_relative '../model/barco.rb'
require_relative '../model/disparo.rb'
require_relative '../model/estado_barco.rb'

describe 'Disparo' do

  before do
    tablero= Tablero.new(5,5)
    tablero.crear_barco_grande(2,1)
    @disparo= Disparo.new(tablero)

  end

  it 'Creo el un disparo y compruebo que sink es falso' do
    expect(@disparo.sink?).to eq false
  end

  it 'Creo el un disparo y compruebo que sink es falso' do
    expect(@disparo.hit?).to eq false
  end

  it 'Creo el un disparo y compruebo que sink es falso' do
    expect(@disparo.miss?).to eq false
  end

  it 'disparar a una posicion y retornar un hit' do
    @disparo.dispara(2,1)
    expect(@disparo.hit?).to be true
  end

  it 'disparo hasta hundir un barco y retornar un sink' do
    @disparo.dispara(2,2)
    @disparo.dispara(2,1)
    expect(@disparo.sink?).to be true
  end

  it 'disparar a una posicion y  retornar un miss' do
    @disparo.dispara(2,5)
    expect(@disparo.miss?).to be true
  end

end