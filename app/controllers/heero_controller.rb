class HeeroController < ApplicationController
  def index
    heeros = Heero.all
    render json: heeros
  end

end
