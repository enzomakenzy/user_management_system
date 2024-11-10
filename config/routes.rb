Rails.application.routes.draw do
  get 'new_user_notice/index'
  root "welcome#index"
  get "welcome", to: "welcome#index", as: "welcome"
  get "home", to: "home#index", as: "home"
  devise_for :users, controllers: { registrations: "users/registrations" }
  resources :positions
  resources :departments
  resources :employees
end
