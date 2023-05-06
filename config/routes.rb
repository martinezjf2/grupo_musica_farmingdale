Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'members#index'
  get '/videos', to: 'videos#show'
  get '/calendar', to: 'events#calendar'
  get '/contact', to: 'members#contact'
  get '/about', to: 'members#about'
  get '/events', to: 'members#events'
  get '/', to: 'members#index'
  get '/login', to: 'sessions#create'
end
