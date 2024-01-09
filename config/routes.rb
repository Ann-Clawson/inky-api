Rails.application.routes.draw do
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"
  get "/users/:id" => "users#show"
  get "/users" => "users#index"

  post "/tattooers" => "tattooers#create"
  patch "/tattooers/:id" => "tattooers#update"
  delete "/tattooers/:id" => "tattooers#destroy"
  get "/tattooers/:id" => "tattooers#show"
  get "/tattooers" => "tattooers#index"

  post "/applications" => "applications#create"
  patch "/applications/:id" => "applications#update"
  delete "/applications/:id" => "applications#destroy"
  get "/applications/:id" => "applications#show"
  get "/applications" => "applications#index"

  post "/sessions" => "sessions#create"
  post "/tattooer_sessions" => "tattooer_sessions#create"

  # get "/apptattooer/:id" => "tattooers#show_app_tattooer"
end
