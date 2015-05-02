require_relative '../../model/tablero.rb'

Given(/^a board with dimensions "([^"]*)" x "([^"]*)"$/) do |xDimension, yDimension|
  @tablero= Tablero.new(xDimension,yDimension)
end

Given(/^I create a small ship in position "([^"]*)"$/) do |posicionX ,posicionY|
  @tablero.crear_barco_chico(posicionX, posicionY)
end


Then(/^position "([^"]*)" is not empty$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end


