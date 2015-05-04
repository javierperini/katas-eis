require_relative '../../model/tablero.rb'
require_relative '../../model/columna.rb'
require_relative '../../model/fila.rb'


Given(/^a board with dimensions "([^"]*)" x "([^"]*)"$/) do |posicionX, posicionY|
  @tablero= Tablero.new(posicionX.to_i, posicionY.to_i)
end



