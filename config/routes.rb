Rails.application.routes.draw do

  devise_for :users
  root "homes#index"
  resources :categories
  resources :posts do
    resources :comments
  end
end
