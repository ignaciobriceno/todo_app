Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/todos', to:'todos#index'
  get '/todos/new'
  get '/todos/:id/edit', to: 'todos#edit', as: 'todo_edit'
  post '/todos', to:'todos#create'
  get '/todos/list', to: 'todos#list'
  post '/todos/:id', to: 'todos#complete'
  get '/todos/:id', to: 'todos#show', as: 'todo'
  get '/todos/:id/complete', to: 'todos#complete'
  patch 'todos/:id', to: 'todos#update'
  delete 'todos/:id', to: 'todos#destroy'


end
