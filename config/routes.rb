Rails.application.routes.draw do
  #resources :transactions
  #resources :cards
  devise_for :users
  resources :companies
  resources :users do
  	resources :cards
  	resources :transactions
  end

  root to:"companies#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
