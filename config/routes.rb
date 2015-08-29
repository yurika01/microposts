Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/new'

  root to: 'static_pages#home'
  get 'signup', to: 'users#new'
  get     'login'  => 'sessions#new'
  post    'login'  => 'sessions#create'
  delete  'logout' => 'sessions#destroy'
  resources :microposts
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end
