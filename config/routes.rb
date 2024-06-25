Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pregaos
  resources :suppliers
  root 'pregaos#index'

end
