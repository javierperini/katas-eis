require 'rspec'
require_relative '../model/barco.rb'
require_relative '../model/estado_barco.rb'

describe 'Barco' do
  before do
    @barco_chico= BarcoChico.new(5,5)
    @barco_grande= BarcoGrande.new(5,5)
  end

  it 'creo un barco chico y compruebo sus coordenadas son las iniciales' do
      expect(@barco_chico.estas_en?(5,5)).to be true
  end

  it 'creo un barco chico y compruebo que no esta hundido' do
    expect(@barco_chico.me_hundieron?).to be false
  end

  it 'creo un barco chico, recibe un disparo y se hunde' do
    @barco_chico.rebici_un_disparo(5,5)
    expect(@barco_chico.me_hundieron?).to be true
  end

  it 'creo un barco chico, recibe un disparo y no se hunde' do
    @barco_chico.rebici_un_disparo(5,4)
    expect(@barco_chico.me_hundieron?).to be false
  end

  it 'creo un barco grande y compruebo sus coordenadas son las iniciales' do
    expect(@barco_grande.estas_en?(5,5)).to be true
  end

  it 'creo un barco grande y compruebo que su estado inicial es Entero' do
    expect(@barco_grande.get_estado.class).to eq Entero
  end

  it 'creo un barco grande y compruebo que no esta hundido' do
    expect(@barco_grande.me_hundieron?).to be false
  end

  it 'creo un barco grande, recibe un disparo y se hunde' do
    @barco_grande.rebici_un_disparo(5,5)
    @barco_grande.rebici_un_disparo(5,6)
    expect(@barco_grande.me_hundieron?).to be true
  end

  it 'creo un barco grande, recibe un disparo y cambia a estado Averiado' do
    @barco_grande.rebici_un_disparo(5,5)
    expect(@barco_grande.get_estado.class).to eq Averiado
  end

  it 'creo un barco grande, recibe un disparo y no se hunde' do
    @barco_grande.rebici_un_disparo(5,4)
    expect(@barco_grande.me_hundieron?).to be false
  end

end