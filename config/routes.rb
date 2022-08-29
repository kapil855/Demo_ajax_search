Rails.application.routes.draw do
  get 'boards/index'
  get 'boards/create'
  root 'home#index'
  get 'index', to: 'home#index'
  resources :boards
  resources :books
  resources :authors
  resources :users
  resources :tasks
  resources :articles do
    resources :comments
  end
  # get    'articles/search',    to:   'articles#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
