class HeeroController < ApplicationController
  def index
    heeros = Heero.all
    render json: heeros
  end

  # GET /heeros/:id
  def show
    heero = Heero.find_by(id: params[:id])
    if heero
      render json: heero
    else
      render json: { error: "Heero not found" }, status: :not_found
    end
  end

   # POST /heeros
  def create
    heero = Heero.create(name: "VICTOR NYANGENA", super_name:"vicky")
    render json: heero, status: :created
  end

  private

  def render_not_found_response
      render json: { error: "Hero not found" }, status: :not_found
  end
end


