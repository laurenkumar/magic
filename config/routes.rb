Rails.application.routes.draw do

  

  namespace :admin do
    resources :users
    resources :commodities_with_integers
    resources :reviews
    resources :home_types
    resources :photos
    resources :reservations
    resources :rooms
    resources :room_types
    resources :guest_reviews
    resources :host_reviews

    root to: "users#index"
  end

  root 'pages#home'

  devise_for :users,
  			path: '',
  			path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
  			controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}
  resources :users, only: [:show]
  resources :rooms, except: [:edit] do
  	member do
  		get 'listing'
  		get 'pricing'
  		get 'description'
  		get 'photo_upload'
  		get 'pricing'
  		get 'amenities'
  		get 'location'
      get 'preload'
      get 'preview'
  	end
    resources :photos, only: [:create, :destroy]
    resources :reservations, only: [:create]
  end

  resources :guest_reviews, only: [:create, :destroy]
  resources :host_reviews, only: [:create, :destroy]

  get '/your_trips' => 'reservations#your_trips'
  get '/your_reservations' => 'reservations#your_reservations'

  get 'search' => 'pages#search'

  get 'dashboard' => 'dashboards#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
