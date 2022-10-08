Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get "/power", to: "power#index"

resources :heero, only: [:index, :show, :create]
resources :power, only: [:index, :update, :show]
resources :hero_power, only:[:index, :show]
get "/heero", to: "heero#index"
get "/hero_power", to: "hero_power#index"
end
