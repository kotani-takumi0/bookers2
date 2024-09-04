Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  resources :books, only: [:new,:index, :show,:create,:destroy,:update,:edit]
  resources :users, only: [:edit,:show,:update,:index]
  get "home/about" => "homes#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
