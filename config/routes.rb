Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "animals#home"
  get "/regions", to: "regions#index"
  get "/reports", to: "reports#index"
  post "/generate_report", to: "reports#generate"
  resources :animals do
    resources :sightings
  end
  resources :regions
end
