Rails.application.routes.draw do
  resources :users
  get '/lists', to: 'lists#index'
  get '/lists/:id', to: 'lists#show', as: 'list'
end
