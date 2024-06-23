Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :pregaos, except: [:destroy]
  get 'pregaos', to: 'pregaos#index'
  get 'pregaos/new', to: 'pregaos#new', as: :new_pregao
  post 'pregaos', to: 'pregaos#create'
end
