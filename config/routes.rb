Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :users
resources :events
resources :videos
resources :documents, path: 'virtus', as: 'virtus', only: [:index, :new, :create, :destroy]
  


# Home/Root Route
  root to: 'members#index'

  get 'switch_locale/:locale', to: 'application#switch_locale', as: :switch_locale

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
  get '/lectura-del-dia', to: 'scraping#lectura'
  get '/daily-gospel', to: 'scraping#daily_gospel'

  get '/noticias', to: 'scraping#weekly_bulletin'
  get '/pdfs/formulario.pdf', to: redirect('/pdfs/formulario.pdf')
  get '/videos/search', to: 'videos#index', as: 'search_videos'
  get '/events/search', to: 'events#index', as: 'search_events'

  get '/signup', to: 'sessions#signup'
  post '/signup', to: 'sessions#create_user'


# Uncomment this when working with these paths
  get '/angeles-de-dios', to: 'members#angeles'
  get '/luz-del-mundo', to: 'members#luz'
  get '/misa', to: 'members#misa'
  get '/resos', to: 'members#resos'
  get '/forms', to: 'members#forms'
  get '/our-parish', to: 'members#about_parish'
  get '/stkilian-new-member', to: 'members#stkilian_new_member'
  get '/pastoral-familiar', to: 'members#pastoral_familiar'
  get '/spanish-weekly-bulletin', to: 'members#spanish_weekly_bulletin'
  get '/guadalupano', to: 'members#guadalupano'




  # This will be partials instead and will render on various pages
  # get '/guadalupanos', to: 'members#guadalupanos'
 


  # Post Requests
  post '/login', to: 'sessions#create'
  post '/events/new', to: 'events#create'

  # Delete Requests
  delete '/logout', to: 'sessions#destroy'
end
