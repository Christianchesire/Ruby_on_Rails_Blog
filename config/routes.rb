Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles
  # Above has same effect 
  #, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  # resources provides REST-ful routes to Rails resources
end
