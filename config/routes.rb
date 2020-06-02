Rails.application.routes.draw do
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'products/create'
  get 'categories/show'
  get 'categories/new'
  get 'categories/create'
  get 'divisions/show'
  get 'divisions/new'
  get 'divisions/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
