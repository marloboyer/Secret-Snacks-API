Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  post "/snacks" => "snacks#create"
  post "/locations" => "locations#create"
  post "/reviews" => "reviews#create"
  post "/twilio" => "twilio#create"

  get "/locations" => "locations#index"
  get "/snacks" => "snacks#index"
  get "/reviews" => "reviews#index"
  get "/users" => "users#index"

  get "/snacks/:id" => "snacks#show"
  get "/locations/:id" => "locations#show"
  get "/reviews/:id" => "reviews#show"

  patch "/snacks/:id" => "snacks#update"
  patch "/locations/:id" => "locations#update"
  patch "/reviews/:id" => "reviews#update"

  delete "/snacks/:id" => "snacks#destroy"
  delete "/locations/:id" => "locations#destroy"
  delete "/reviews/:id" => "reviews#destroy"
end
