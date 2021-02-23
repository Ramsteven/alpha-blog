Rails.application.routes.draw do
  root 'pages#home'
  resources :users do
    resources :socials, shallow: true
  end 
  get 'singup', to: "users#new"
end
