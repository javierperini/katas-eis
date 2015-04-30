require_relative '../../model/tablero.rb'

Given(/^a board with dimensions "([^"]*)" x "([^"]*)"$/) do |xDimension, yDimension|
  @tablero= Tablero.new(xDimension,yDimension)
end


