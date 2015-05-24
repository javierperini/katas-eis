require_relative '../../model/tablero.rb'
require_relative '../../model/columna.rb'
require_relative '../../model/fila.rb'
require_relative '../../model/barco.rb'
require_relative '../../model/disparo.rb'
require_relative '../../model/estado_barco.rb'


Given(/^a large ship in position: “(\d+):(\d+)”$/) do |posicionX, posicionY|
  fill_in(:gran_posX, :with => posicionX)
  fill_in(:gran_posY, :with => posicionY)
  click_button "boton_barco_grande"
end

Given(/^I shoot to position “(\d+):(\d+)”$/) do |posicionX, posicionY|
  fill_in(:shoot_X, :with => posicionX)
  fill_in(:shoot_Y, :with => posicionY)
  click_button "boton_disparo"
end

Then(/^I get water$/) do
  pending
  #expect(@tablero.es_miss?).to be true
end

Then(/^I get hit$/) do
  expect(page.has_content?("HIT")).to eq true
end

Then(/^I get sink$/) do
  pending
  #expect(@tablero.hundi_barco?).to be true
end

Then(/^I get alert invalid location “(\d+):(\d+)”$/) do |posicionX, posicionY|
  pending
  #expect{@tablero.disparar_posicion(posicionX,posicionY)}.to raise_error
end

