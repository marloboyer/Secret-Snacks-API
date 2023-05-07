Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  post "/snacks" => "snacks#create"
  post "/locations" => "location#create"
end
