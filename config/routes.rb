Rails.application.routes.draw do
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"
  get "/users/:id" => "users#show"
  get "/users" => "users#index"

  post "/sessions" => "sessions#create"
end
