Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :users
resources :events
resources :videos
resources :prayers
resources :documents, path: 'virtus', as: 'virtus'
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
  # get '/virtus', to: 'members#virtus'
  # get '/documents/show', to: 'documents#show', as: :show_document
  get '/dailyword', to: 'scraping#dailyword'
  get '/weekly_bulletin', to: 'scraping#weekly_bulletin'
  get '/pdfs/formulario.pdf', to: redirect('/pdfs/formulario.pdf')
  get '/videos/search', to: 'videos#index', as: 'search_videos'
  get '/events/search', to: 'events#index', as: 'search_events'
  
  # get '/videos?page=1', to: 'videos#index', defaults: {page: 1}, as: 'videos'
  # post '/videos?page=1', to: 'videos#index', defaults: {page: 1}
  # get '/videos?page=1/new', to: 'videos#new', as: 'new_video'
  # get '/videos?page=1/:id/edit', to: 'videos#edit', as: 'edit_video'
  # get '/videos?page=1/:id', to: 'videos#show', as: 'video'
  # patch '/videos?page=1/:id', to: 'videos#update'
  # put '/videos?page=1/:id', to: 'videos#update'
  # delete '/videos?page=1/:id', to: 'videos#destroy'


  # Post Requests
  post '/login', to: 'sessions#create'
  post '/events/new', to: 'events#create'

  # Delete Requests
  delete '/logout', to: 'sessions#destroy'
end
