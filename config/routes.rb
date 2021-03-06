Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'
  get '/about' => 'about#index', as: 'about'




  # USER ROUTES
  get '/users/new' => 'users#new', as: 'new_user'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show', as: 'user'
  get '/users/:id/edit' => 'users#edit', as: 'edit_user'
  patch '/users/:id' => 'users#update'

  # EVENT ROUTES
  get '/events' => 'events#index', as: 'events'
  get '/events/:id' => 'events#show', as: 'event'
  get '/events/new' => 'events#new', as: 'new_event'
  post '/events' => 'events#create'
  get '/events/:id/edit' => 'events#edit', as: 'edit_event'
  patch '/events/:id' => 'events#update'
  delete '/events/:id' => 'events#destroy'
  # get '/events/:id/ideas' => 'ideas#index', as: 'ideas'
  post '/events/:event_id/users' =>  'events_users#build'


  # IDEAS ROUTES
  get '/events/:id/ideas/new' => 'ideas#new', as: 'new_idea'
  post '/events/:id/ideas' => 'ideas#create', as: 'create_idea'

  get '/ideas' => 'ideas#index', as: 'ideas'
  get '/ideas/:id' => 'ideas#show', as: 'idea'
  post '/ideas/:id/edit' => 'ideas#edit', as: 'edit_idea'
  patch '/ideas/:id' => 'ideas#update'
  delete '/ideas/:id' => 'ideas#destroy'

  # SESSION ROUTES
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # IMAGES ROUTES FOR IDEAS
   post  '/ideas/:idea_id/images(.:format)' => 'images#create', as: 'idea_images'
   delete '/ideas/:idea_id/images/:id(.:format)' => 'images#destroy', as: 'idea_image'

  resources :ideas do
    member do
      put "like", to: "ideas#upvote"
    end
  end

  resources :events, except: :create do
    resources :users

  end
end
