Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get "/power", to: "power#index"
get "/heero", to: "heero#index"
get "/hero_power", to: "hero_power#index"
end
