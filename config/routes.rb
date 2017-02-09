Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'

  # USER ROUTES
  get '/users/new' => 'users#new', as: 'new_user'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show', as: 'user'
  get '/users/:id/edit' => 'users#edit', as: 'edit_user'
  patch '/users/:id' => 'users#update'

  # EVENT ROUTES
  get '/events' => 'events#index', as: 'events'
  get '/events/:id' => 'events#show', as: 'event'
  get '/events/new' => 'events#new', as: "new_event"
  post '/events' => 'events#create'
  get '/events/:id/edit' => 'events#edit', as: 'edit_event'
  patch '/events/:id' => 'events#update'
  delete '/events/:id' => 'events#destroy'
  # get '/events/:id/ideas' => 'ideas#index', as: 'ideas'

  # IDEAS ROUTES
  get '/ideas' => 'ideas#index', as: 'ideas'
  get '/ideas/:id' => 'ideas#show', as: 'idea'
  get '/ideas/new' => 'ideas#new', as: 'new_idea'
  post '/ideas' => 'ideas#create'
  get '/ideas/:id/edit' => 'ideas#edit', as: 'edit_idea'
  patch '/ideas/:id' => 'ideas#update'
  delete '/ideas/:id' => 'ideas#destroy'

  # SESSION ROUTES
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
