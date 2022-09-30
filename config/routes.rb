Rails.application.routes.draw do
  root 'breweries#index'
  get 'ratings', to: 'ratings#index'
  get 'ratings/new', to:'ratings#new'
  post 'ratings', to: 'ratings#create'
  resources :beers
  resources :breweries
  resources :ratings, only: [:index, :new, :create, :destroy]
end
