Rails.application.routes.draw do
  get 'calendar/index'
  devise_for :users
  root to: "users#index"
   resources :constructions
   resources :users
   resources :calendars
end
