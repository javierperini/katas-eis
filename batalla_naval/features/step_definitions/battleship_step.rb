require_relative '../../model/tablero.rb'
require_relative '../../model/columna.rb'
require_relative '../../model/fila.rb'
require_relative '../../model/barco.rb'


Given(/^a board with dimensions "([^"]*)" x "([^"]*)"$/) do |posicionX, posicionY|
  visit '/mipagina'
  fill_in(:tableroX, :with => posicionX)
  fill_in(:tableroY, :with => posicionY)
  click_button "boton_tablero"
end

Given(/^I create a small ship in position "(\d+):(\d+)"$/) do |posicionX ,posicionY|
  fill_in(:posX, :with => posicionX)
  fill_in(:posY, :with => posicionY)
  click_button "boton_enviar"
end

Given(/^I create a large ship in position "(\d+):(\d+)"$/) do | posicionX ,posicionY|
  fill_in(:gran_posX, :with => posicionX)
  fill_in(:gran_posY, :with => posicionY)
  click_button "boton_barco_grande"
end

Then(/^position "(\d+):(\d+)" is not empty$/) do |posicionX, posicionY|
  expect(page.has_content?(posicionX)).to eq true
  expect(page.has_content?(posicionY)).to eq true
end

Then(/^I create a small ship in an invalid position "(\d+):(\d+)" and  Alert invalid location$/) do | posicionX ,posicionY|
  fill_in(:posX, :with => posicionX)
  fill_in(:posY, :with => posicionY)
  expect{  click_button "boton_enviar" }.to raise_error
end






