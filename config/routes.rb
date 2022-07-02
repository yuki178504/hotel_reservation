Rails.application.routes.draw do
  get 'users/index'
  devise_for :users #devise_forはヘルパーメソッドで、モデル名を指定すると、必要なルーティングを自動でしてくれる
  resources :accounts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top/page'
  resources :users
  resources :registers
  resources :reserves  do
    post :confirm, on: :collection
  end
end
