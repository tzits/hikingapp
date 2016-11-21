Rails.application.routes.draw do
  resources :users
  get '/lists', to: 'lists#index'
  get '/lists/:id', to: 'lists#show', as: 'list'
  post '/user_list_category_items', to: 'user_list_category_items#new'
  get '/items/:id', to: 'items#show', as: 'item'
end
