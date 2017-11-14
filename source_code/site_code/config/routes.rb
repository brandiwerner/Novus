Rails.application.routes.draw do

  get  'home', to: 'static_pages#home'

  get 'static_pages/help'

  get 'events/new'

  get 'events/index', as: 'index'
  get '/signup', to: 'users#new'

  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
