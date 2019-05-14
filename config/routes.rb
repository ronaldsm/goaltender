Rails.application.routes.draw do
  resources :personas
  get 'tests/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root  'tests#index'

  resources :tests
end
