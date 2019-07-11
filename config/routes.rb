Rails.application.routes.draw do
  devise_for :users
	root 'home#index'

	resources :products

  get '/cart', to: 'carts#index'

  get '/cart/add', to: 'carts#add'
end
