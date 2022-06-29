Rails.application.routes.draw do
  get 'reserves/index'
  devise_for :users
  get 'users/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top/page'
  resources :registers
  resources :reserves  do
    post :confirm, on: :collection
  end
end
