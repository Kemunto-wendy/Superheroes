class HeroPowerController < ApplicationController
  def index
    hero_powers = HeroPower.all
    render json: hero_powers
  end

    # GET /hero_power/:id
    def show
      hero_power = HeroPower.find_by(id: params[:id])
      if hero_power
        render json: hero_power
      else
        render json: { error: "Hero Power is not found" }, status: :not_found
      end
    end

end
