Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles
  get 'signup', to: 'users#new'
  
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
 
  # Above has same effect 
  #, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  # resources provides REST-ful routes to Rails resources
end
