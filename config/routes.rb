Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :countries
  resources :charges
end
