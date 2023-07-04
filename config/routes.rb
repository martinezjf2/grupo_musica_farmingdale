Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :users
resources :events
resources :videos
  # Home/Root Route
  root to: 'members#index'

  # Get Requests
  get '/calendar', to: 'events#calendar'
  get '/contact', to: 'members#contact'
  get '/about', to: 'members#about'
  get '/', to: 'members#index'
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  # get '/users/:id', to: 'members#index'
  get '/virtus', to: 'members#virtus'
  # get '/documents/show', to: 'documents#show', as: :show_document
  get '/dailyword', to: 'scraping#dailyword'
  get '/weekly_bulletin', to: 'scraping#weekly_bulletin'
  # get '/videos/new', to: 'videos#new'

  # Post Requests
  post '/login', to: 'sessions#create'
  post '/events/new', to: 'events#create'
  # post '/videos/new', to: 'videos#create'

  # Delete Requests
  delete '/logout', to: 'sessions#destroy'
end
