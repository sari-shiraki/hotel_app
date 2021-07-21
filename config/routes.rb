Rails.application.routes.draw do
  get 'hotels/index'
  get 'top', to: 'top#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :hotels
end
