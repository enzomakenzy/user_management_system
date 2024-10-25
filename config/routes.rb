Rails.application.routes.draw do
  root "welcome#index"
  get "welcome", to: "welcome#index", as: "welcome"
  get "home", to: "home#index", as: "home"
  devise_for :users
  resources :positions
  resources :departments
  resources :employees
end
