Rails.application.routes.draw do
  root "home#index"
  devise_for :users, controllers: { registrations: "users/registrations", passwords: "users/passwords" }
  get "alert_email_password/index"
  get "new_user_notice/index"
  get "home", to: "home#index", as: "home"
  resources :positions
  resources :departments
  resources :employees
end
