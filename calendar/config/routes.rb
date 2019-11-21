Rails.application.routes.draw do
  root 'welcome#index'
  
  resources :users 
  resources :sessions, only: [:new, :create, :destroy]
  resources :calendar
  
  get 'allEvents', to: 'calendar#allEvents', as: 'allEvents'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'month', to: 'calendar#month', as: 'month'
end
