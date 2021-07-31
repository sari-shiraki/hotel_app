Rails.application.routes.draw do
  root 'top#hello' #トップページ
  get 'signup', to:'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :hotels
  resources :users
end
