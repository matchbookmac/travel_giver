Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :countries do
    resources :projects
  end
end
