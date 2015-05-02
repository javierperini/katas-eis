require_relative '../../model/tablero.rb'
require_relative '../../model/columna.rb'
require_relative '../../model/fila.rb'

Given(/^a board with dimensions "([^"]*)" x "([^"]*)"$/) do |xDimension, yDimension|
  @tablero= Tablero.new(xDimension.to_i, yDimension.to_i)
end

Given(/^I create a small ship in position "(\d+):(\d+)"$/) do |posicionX ,posicionY|
  @tablero.crear_barco_chico(posicionX.to_i, posicionY.to_i)
end

Then(/^position "(\d+):(\d+)" is not empty$/) do |posicionX, posicionY|
  expect(@tablero.posicion_ocupada?(posicionX.to_i,posicionY.to_i)).to eq(true)
end


