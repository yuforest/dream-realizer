Rails.application.routes.draw do

  resources :calendars, only: [:index]

  get 'homes/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  resources :dreams, type: 'Dream'
  resources :long_targets, type: 'LongTarget'
  resources :medium_targets, type: 'MediumTarget'
  resources :steps, type: 'Step'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root :to => 'homes#index'
end
