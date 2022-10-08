class PowerController < ApplicationController

  def index
    render json: { Team: "Welcome to my new rails application" }
  end

end
