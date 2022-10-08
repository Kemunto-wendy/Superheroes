class PowerController < ApplicationController

  def index
    powers = Power.all
    render json: powers
  end

  def show
    power = Power.find_by(id: params[:id])
    if power
      render json: power
    else
      render json: { error: "The Required power not found" }, status: :not_found
    end
  end

  def update
    power = find_params
    power.update!(power_params)
    render json: power, status: :ok

end

private

def find_params
    Power.find(params[:id])
end

def render_not_found_response
    render json: { error: "Power not found" }, status: :not_found
end

def power_params
    params.permit(:description)
end

def render_unproccessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
end

end
