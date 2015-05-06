require_relative '../../model/tablero.rb'
require_relative '../../model/columna.rb'
require_relative '../../model/fila.rb'
require_relative '../../model/barco.rb'


Given(/^a board with dimensions "([^"]*)" x "([^"]*)"$/) do |posicionX, posicionY|
  @tablero= Tablero.new(posicionX.to_i, posicionY.to_i)
end

Given(/^I create a small ship in position "(\d+):(\d+)"$/) do |posicionX ,posicionY|
  @tablero.crear_barco_chico(posicionX.to_i, posicionY.to_i)
end

Given(/^I create a large ship in position "(\d+):(\d+)"$/) do | posicionX ,posicionY|
  begin
    @tablero.crear_barco_grande(posicionX.to_i, posicionY.to_i)
  rescue
    puts("Lanzo la expecion")
  end
end

Then(/^position "(\d+):(\d+)" is not empty$/) do |posicionX, posicionY|
  expect(@tablero.posicion_ocupada?(posicionX.to_i,posicionY.to_i)).to be (true)
end

Then(/^Alert invalid location$/) do
  pending # express the regexp above with the code you wish you had
end





