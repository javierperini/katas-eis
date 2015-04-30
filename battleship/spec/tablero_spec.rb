require 'rspec'
require_relative '../model/tablero.rb'

describe 'Tablero' do
  before do
    @tablero= Tablero.new(5,5)
  end

  it 'compruebo que el ancho del tablero es 5' do
    expect(@tablero.get_ancho).to eq 5
  end

  it 'compruebo que el alto del tablero es 5' do
    expect(@tablero.get_alto).to eq 5
  end

end