Rails.application.routes.draw do

  devise_for :users
  get 'todos', to: 'todos#index'
  post 'todos', to: 'todos#create' 
  get 'todos/new', to: 'todos#new',as: 'new_todo'
  get 'todos/:id/edit', to: 'todos#edit',as: 'edit_todo'
  get 'todos/:id', to: 'todos#show',as: 'todo'
  patch 'todos/:id', to: 'todos#update'
  put 'todos/:id', to: 'todos#update'  
  delete 'todos/:id', to: 'todos#destroy'

  root to: "todos#index"
end