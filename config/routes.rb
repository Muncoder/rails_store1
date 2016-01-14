Rails.application.routes.draw do
  resources :products
  devise_for :users

  resource :cart, only: [ :show ] do
  	post "add", path: "add/:id"
  	post "remove", path: "remove/:id"
  	post "add_quantity", path: "addquantity/:id"
  	post "remove_quantity", path: "removequantity/:id"

  	get "kill", path: "kill"


  end

  root "products#index"
end
