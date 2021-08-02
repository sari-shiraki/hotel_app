Rails.application.routes.draw do
  root 'top#hello' #トップページ
  get '/signup', to:'users#new'
  get 'users/index', to: 'users#index'
  get '/users/:id', to: 'users#show'
  get '/users/profile/:id', to:'users#edit'
  patch '/users/profile/:id', to: 'users#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :hotels
  resources :users
end
