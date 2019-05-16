Rails.application.routes.draw do
  resources :areas
  resources :cores
  resources :personas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'cores#index'

  resources :tests
end
