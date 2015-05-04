require_relative '../../model/tablero.rb'
require_relative '../../model/columna.rb'
require_relative '../../model/fila.rb'
require_relative '../../model/barco.rb'
require_relative '../../model/disparo.rb'

Given(/^a large ship in position: “(\d+):(\d+)”$/) do |posicionX, posicionY|
  @tablero.crear_barco_grande(posicionX.to_i, posicionY.to_i)
end

Given(/^I shoot to position “(\d+):(\d+)”$/) do |posicionX, posicionY|
  @tablero.disparar_posicion(posicionX.to_i,posicionY.to_i)
end