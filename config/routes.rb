Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :cars
  resources :categories 
  root to: 'cars#home'
  get '/salut', to: 'pages#salut' 
  get '/cars/:name', to: 'cars#index'
  #get post put delete, match(via post..) root
  # Defines the root path route ("/")
  # root "articles#index"
end
