Rails.application.routes.draw do
  root 'breweries#index'
  get 'ratings', to: 'ratings#index'
  get 'ratings/new', to:'ratings#new'
  post 'ratings', to: 'ratings#create'
  get 'signup', to: 'users#new'
  resource :session, only: [:new, :create, :destroy]
  resources :beers
  resources :breweries
  resources :ratings, only: [:index, :new, :create, :destroy]
  resources :users
end
