Rails.application.routes.draw do
  root "welcome#top"
  
  resources :users
  resources :sessions, only: [:new, :destroy]
  resources :jobs
  resources :entries
  
  get "login", to: "sessions#new"
  get "logout", to: "sessions#destroy"
  
  get "entried", to: "users#entried"
  
  post "entry", to: "jobs#entry"
  post "like", to: "likes#create"
  
  get "search", to: "jobs#search"
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
