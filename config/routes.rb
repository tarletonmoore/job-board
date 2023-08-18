Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/companies" => "companies#index"
  get "/companies/:id" => "companies#show"
end
