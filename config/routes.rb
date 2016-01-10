Rails.application.routes.draw do
  get 'pages/about'

  root "pages#about"
end
