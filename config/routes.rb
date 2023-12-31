Rails.application.routes.draw do
  get 'projects/index'
  get 'projects/show'
  get 'pages/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  root 'pages#home'
  get 'about', to: 'pages#home'
  get 'projects', to: 'pages#home'
  get 'resume', to: 'pages#home'
  get 'contact', to: 'pages#home'

  # Defines the root path route ("/")
  # root "posts#index"
end
