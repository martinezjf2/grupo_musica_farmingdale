Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :user
  # Home/Root Route
  root to: 'members#index'

  # Get Requests
  get '/videos', to: 'videos#show'
  get '/calendar', to: 'events#calendar'
  get '/contact', to: 'members#contact'
  get '/about', to: 'members#about'
  get '/events', to: 'members#events'
  get '/', to: 'members#index'
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  get '/users/:id', to: 'members#index'


  # Post Requests
  post '/login', to: 'sessions#create'

  # Delete Requests
  delete '/logout', to: 'sessions#destroy'
end
