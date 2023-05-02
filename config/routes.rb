Rails.application.routes.draw do
  get 'static/index'
  devise_for :users
  root "articles#index"

  resources :articles do
    resources :comments
  end    
  
  resources :products

  namespace :api do
    namespace :v1 do
  resources :articles
    end
end
end