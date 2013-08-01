HackerNews::Application.routes.draw do

  resources :users
  
  resources :links
  resources :comments
  resources :sessions
  
end
