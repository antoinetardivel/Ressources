Rails.application.routes.draw do
  resources :subcategories
  resources :categories
  resources :ressources
  resources :authors
  root 'pages#home'
end
