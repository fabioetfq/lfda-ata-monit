Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pregaos, :suppliers, :institutions, :arps, :active_arps
  resources :items do
    resourcers :carts
  end
  get '/wishlist', to: 'carts#wishlist'
  root 'pregaos#index'

end
