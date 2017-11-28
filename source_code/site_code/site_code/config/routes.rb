Rails.application.routes.draw do

  get 'sessions/new'

  get  'home', to: 'static_pages#home'
  get 'static_pages/help'
  get 'events/new'
  get 'events/index', as: 'index'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :events
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
