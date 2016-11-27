Rails.application.routes.draw do
  resources :users
  root to: 'sessions#new'
  get '/lists', to: 'lists#index'
  get '/lists/:id', to: 'lists#show', as: 'list'
  post '/user_list_category_items', to: 'user_list_category_items#create'
  delete '/user_list_category_items/:item_id', to: 'user_list_category_items#destroy', as: 'item_delete'
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
end
