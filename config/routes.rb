Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resources :subcategories
  resources :categories
  resources :ressources
  resources :authors
  root 'pages#home'
  get "propositions" => "pages#propositions"
end
