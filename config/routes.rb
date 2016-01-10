Rails.application.routes.draw do
  resources :products
  devise_for :users
  get 'pages/about'

  root "products#index"
end
