Rails.application.routes.draw do
  get 'pages/show'

  resources :users
  root to: 'sessions#new'
  post '/lists', to: 'lists#create'
  get '/lists/:id/new', to: 'lists#new', as: 'new_list'
  get '/lists', to: 'lists#index'
  get '/lists/:id', to: 'lists#show', as: 'list'
  post '/user_list_category_items', to: 'user_list_category_items#create'
  delete '/user_list_category_items/:item_id', to: 'user_list_category_items#destroy', as: 'item_delete'
  post '/items', to: 'items#create', as: 'items'
  get '/items/:id', to: 'items#show', as: 'item'
  get '/login', to: 'sessions#new', as: 'login'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  post '/login', to: 'sessions#create'
  get '/register', to: 'users#new'
  post '/register', to: 'users#create'
  get '/lists/:id/categories/:category_id', to: 'categories#show', as: 'category'
  get '/checklists', to: 'checklists#index'
  get '/checklists/:id', to: 'checklists#show', as: 'checklist'
  post '/comments', to: 'comments#create'
  patch '/checklistitems/:id', to: 'checklist_items#update', as: 'checklist_item'
  get '/pages/:page', to: "pages#show", as: "page"
end
