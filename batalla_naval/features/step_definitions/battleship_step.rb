require_relative '../../model/tablero.rb'
require_relative '../../model/columna.rb'
require_relative '../../model/fila.rb'
require_relative '../../model/barco.rb'


Given(/^a board with dimensions "([^"]*)" x "([^"]*)"$/) do |posicionX, posicionY|
  visit '/mipagina'
  @tablero= Tablero.new(posicionX.to_i, posicionY.to_i)
end

Given(/^I create a small ship in position "(\d+):(\d+)"$/) do |posicionX ,posicionY|
  @tablero.crear_barco_chico(posicionX.to_i, posicionY.to_i)
end

Given(/^I create a large ship in position "(\d+):(\d+)"$/) do | posicionX ,posicionY|
    @tablero.crear_barco_grande(posicionX.to_i, posicionY.to_i)
end

Then(/^position "(\d+):(\d+)" is not empty$/) do |posicionX, posicionY|
  expect(@tablero.posicion_ocupada?(posicionX.to_i,posicionY.to_i)).to be (true)
end

Then(/^I create a small ship in an invalid position "(\d+):(\d+)" and  Alert invalid location$/) do | posicionX ,posicionY|
  expect{@tablero.crear_barco_chico(posicionX, posicionY)}.to raise_error
end






