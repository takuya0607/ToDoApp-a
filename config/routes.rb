Rails.application.routes.draw do

  get   'userinfos/:id/edit', to: 'userinfos#edit',as:'edit_userinfo'
  patch 'userinfos/:id',to: 'userinfos#update'
  put   'userinfos/:id',to: 'userinfos#update'
  get   'userinfos/new',to: 'userinfos#new',as:'new_userinfo'
  post  'userinfos',to: 'userinfos#create'
  get   'userinfos/:id', to: 'userinfos#show',as: 'userinfo'

  devise_for :users
  
  get 'users', to: 'users#index'

  #get   'todos', to: 'todos#index'
  post   'todos', to: 'todos#create' 
  get    'todos/new', to: 'todos#new',as: 'new_todo'
  get    'todos/:id/edit', to: 'todos#edit',as: 'edit_todo'
  get    'todos/:id', to: 'todos#show',as: 'todo'
  patch  'todos/:id', to: 'todos#update'
  put    'todos/:id', to: 'todos#update'  
  delete 'todos/:id', to: 'todos#destroy'

  root to: "users#index"

end