Rails.application.routes.draw do
  devise_for :users
  root to: "countries#index"

  resources :countries do
    resources :projects
  end

  resources :charges
  resources :allprojects, only: :index
end
