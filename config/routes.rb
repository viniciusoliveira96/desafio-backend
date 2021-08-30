Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :parlamentares

  get 'csv', to: 'csv#index'
  post 'csv/importar', to: 'csv#importar'
  #get 'csv/resultado', to: 'csv#resultado'


end
