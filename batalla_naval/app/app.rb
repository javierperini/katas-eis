require_relative '../model/tablero.rb'
require_relative '../model/columna.rb'
require_relative '../model/fila.rb'
require_relative '../model/barco.rb'
require_relative '../model/disparo.rb'
require_relative '../model/estado_barco.rb'

module Battleship
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers
    use Rack::Session::Pool
    disable :protect_from_csrf

    get '/' do
      File.read(File.join('public', 'index.html'))
    end

    get 'mipagina' do
      render 'batalla/inicio'
    end

    def actualizar(tablero)
      session[:object] = tablero
      @tablero_tamanio = "(" +tablero.get_columnas.to_s+", "+tablero.get_nro_filas.to_s+")"
    end

    post 'crearTablero' do
      @tablero= Tablero.new(params[:tableroX].to_i,params[:tableroY].to_i)
      actualizar(@tablero)
      render 'batalla/inicio'
    end

    post 'crearBarco' do
      @tablero= session[:object]
      @tablero.crear_barco_chico(params[:posX].to_i,params[:posY].to_i)
      @posicion = "(" +params[:posX]+", "+params[:posY]+")"
      actualizar(@tablero)
      render 'batalla/inicio'
    end

    post 'crearBarcoGrande' do
      @tablero= session[:object]
      @tablero.crear_barco_grande(params[:gran_posX].to_i,params[:gran_posY].to_i)
      @siguiente= (params[:gran_posY].to_i + 1).to_s
      @posicion = "(" +params[:gran_posY]+", "+params[:gran_posY]+ ") (" +params[:gran_posY]+", "+@siguiente+ ")"
      actualizar(@tablero)
      render 'batalla/inicio'
    end
  end
end
