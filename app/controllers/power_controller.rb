class PowerController < ApplicationController

  def index
    powers = Power.all
    render json: powers
  end

end
