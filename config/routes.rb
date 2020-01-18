Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Generic route:
  # VERB PATH, to: 'CONTROLLER#ACTION'
  root to: "tasks#index"
  get "tasks", to: "tasks#index", as: "tasks"
  get "tasks/new", to: "tasks#new", as: "new"
  post "tasks", to: "tasks#create", as: "create"
  get "tasks/:id/edit", to: "tasks#edit", as: "edit"
  get "tasks/:id", to: "tasks#show", as: "task"
  patch "tasks/:id", to: "tasks#update"
  delete "tasks/:id", to: "tasks#destroy", as: "delete"
  # get "tasks/:id", to: "tasks#show", as: "task"
end
