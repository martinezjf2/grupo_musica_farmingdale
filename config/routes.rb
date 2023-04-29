Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'users#index'
  get '/videos', to: 'videos#show'
  get '/calendar', to: 'events#calendar'
  get '/contact', to: 'users#contact'
end
