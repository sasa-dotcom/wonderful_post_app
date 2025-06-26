Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  get '/mypage', to: 'mypage#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles
end
