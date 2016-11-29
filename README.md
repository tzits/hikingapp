#Hyker
Plan Your Adventure
#Description
Hyker is an app designed for users who are hoping to do some adventuring, but need some guidance on where to start.

The user is able so choose what type of activity they are interested in pursuing and are then provided with a curated list of essential items, that they can learn about and add to their profile. Additionally there is a checklist full of other important items for their journeys.

#Technologies Used
* Ruby on Rails
* JQuery
* HTML
* CSS
* Bootstrap

###Gems
* Bcrypt
* Paperclip

#Key User Stories
* User can Create Account
* User can Update Account
* User can Browse key gear items for activities
* User can add or remove gear to personal gear lists
* User can create own gear items
* User can see a checklist of items for activities
* User can check and uncheck checklist items

#WireFrames

####Profile
![alt text](http://i.imgur.com/HsSAcHe.png)

####Browse Gear Page
![alt text](http://i.imgur.com/zSDW2vy.png)

####Add to List Modal 
![alt text](http://i.imgur.com/7QykV07.png)


#EED

![alt text](http://i.imgur.com/iLmYWqw.png)


##Endpoints

###Users
* New `get '/register', to: 'users#new'`
* Create `post '/register', to: 'users#create'`
* Edit `get 'users/:id/edit', to: 'users#edit'`
* Update `patch 'users/:id', to: 'users#update'`

###Lists

* Index `get '/lists', to: 'lists#index'`
* Show `get '/lists/:id', to: 'lists#show', as: 'list'`

###Items

* Create `post '/items', to: 'items#create', as: 'items'`
* Show `get '/items/:id', to: 'items#show', as: 'item'`

###Checklists

* Show `get '/checklists', to: 'checklists#index'`
* Index `get '/checklists/:id', to: 'checklists#show', as: 'checklist'`

###ChecklistItems

* Update `patch '/checklistitems/:id', to: 'checklist_items#update', as: 'checklist_item'`

###UserListCategoryItems

* Create `post '/user_list_category_items', to: 'user_list_category_items#create'`
* Destroy `delete '/user_list_category_items/:item_id', to: 'user_list_category_items#destroy'`

###Comments

* Create `post '/comments', to: 'comments#create'`

###Categories

* Show `get '/lists/:id/categories/:category_id', to: 'categories#show', as: 'category'`

###Pages

* Show `get '/pages/:page', to: "pages#show", as: "page"`

###Sessions

* New `get '/login', to: 'sessions#new', as: 'login'`
* Create `post '/login', to: 'sessions#create'`
* Destroy `get '/logout', to: 'sessions#destroy', as: 'logout'`