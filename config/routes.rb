Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  post "/snacks" => "snacks#create"
  post "/locations" => "locations#create"
  post "/reviews" => "reviews#create"

  get "/locations" => "locations#index"
  get "/snacks" => "snacks#index"
  get "/reviews" => "reviews#index"
  get "/users" => "users#index"
end
