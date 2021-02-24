Rails.application.routes.draw do
  root 'pages#home'
  resources :users do
    resources :socials, shallow: true
  end 
  get 'signup', to: "users#new"

  #handler session
  get 'login', to: "sessions#new"
  post 'login', to: "sessions#create"
  delete 'login', to: "sessions#destroy"
end
