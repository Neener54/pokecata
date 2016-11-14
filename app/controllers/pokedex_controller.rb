class PokedexController < ApplicationController
  
  def index
    @list = Pokedex.new.list
  end
  
end
