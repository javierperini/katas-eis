require_relative '../../model/tablero.rb'
require_relative '../../model/columna.rb'
require_relative '../../model/fila.rb'
require_relative '../../model/barco.rb'
require_relative '../../model/disparo.rb'
require_relative '../../model/estado_barco.rb'


Given(/^a large ship in position: “(\d+):(\d+)”$/) do |posicionX, posicionY|
  @tablero.crear_barco_grande(posicionX.to_i, posicionY.to_i)
end

Given(/^I shoot to position “(\d+):(\d+)”$/) do |posicionX, posicionY|
  @tablero.disparar_posicion(posicionX.to_i,posicionY.to_i)
end

Then(/^I get water$/) do
  expect(@tablero.es_miss?).to be true
end

Then(/^I get hit$/) do
  expect(@tablero.es_hit?).to be true
end

Then(/^I get sink$/) do
  expect(@tablero.hundi_barco?).to be true
end

Then(/^I get alert invalid location “(\d+):(\d+)”$/) do |posicionX, posicionY|
  pending # express the regexp above with the code you wish you had
end

