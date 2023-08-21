Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "jobs#index"
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  # get "/companies" => "companies#index"
  # get "/companies/:id" => "companies#show"
  resources :companies
  # get "/jobs/:id" => "jobs#show"
  # get "/jobs" => "jobs#index"
  resources :jobs
  # resources :liked_jobs
  post "liked_jobs" => "liked_jobs#create"
  delete "liked_jobs/:id" => "liked_jobs#destroy"
end
