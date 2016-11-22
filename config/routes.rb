Rails.application.routes.draw do
  resources :users
  root to: 'sessions#new'
  get '/lists', to: 'lists#index'
  get '/lists/:id', to: 'lists#show', as: 'list'
  post '/user_list_category_items', to: 'user_list_category_items#create'
  get '/items/:id', to: 'items#show', as: 'item'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/register', to: 'users#new'
  post '/register', to: 'users#create'
  get '/lists/:id/categories/:category_id', to: 'categories#show', as: 'category'
end
