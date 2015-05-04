require 'rspec'
require_relative '../model/tablero.rb'
require_relative '../model/columna.rb'
require_relative '../model/fila.rb'

describe 'Tablero' do
  before do
    @tablero= Tablero.new(5,5)
  end

  it 'compruebo que la cantidad de columnas del tablero es 5' do
    expect(@tablero.get_columnas).to eq 5
  end

  it 'compruebo que la cantidad de filas del tablero es 5' do
    expect(@tablero.get_filas).to eq 5
  end
end

