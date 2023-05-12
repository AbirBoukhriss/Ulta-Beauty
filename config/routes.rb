Rails.application.routes.draw do
  get 'static/index'
  devise_for :users
  root "articles#index"

  resources :articles do
    resources :comments
   
  end    

  resources :products
  get'/produit', to: 'articles#products'

  resources :parfums
  get'/parfum', to: 'articles#parfums'
  resources :maquillages
  get'/maquillage', to: 'articles#maquillages'
  resources :soinvisages
  get'/soinvisage', to: 'articles#soinvisages'
  resources :soincheveus
  get'/soincheveu', to: 'articles#soincheveus'


  resources :conseilparfums
  get'/conseilparfum', to: 'articles#conseilparfums'

  resources :corpsetbains
  get'/corpetbain', to: 'articles#corpsetbains'

  resources :premiums
  get'/premium', to: 'articles#premiums'

  resources :conseilsoins
  get'/conseilsoin', to: 'articles#conseilsoins'

  resources :conseilmakeups
  get'/conseilmakeup', to: 'articles#conseilmakeups'

  resources :conseilcapillaires
  get'/conseilcapillaire', to: 'articles#conseilcapillaires'

  resources :moins
  get'/moin', to: 'articles#moins'
  resources :paniers
  get'/panier', to: 'articles#paniers'

  resources :validerpaniers
  get'/panier', to: 'articles#validerpaniers'

 

  namespace :api do
    namespace :v1 do
  resources :articles
    end
end
end