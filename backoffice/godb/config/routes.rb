Rails.application.routes.draw do
  resources :users
  resources :lands
  resources :crons
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
