Rails.application.routes.draw do
  resources :products
  root to: 'main#index'
  get 'search/create'

end
