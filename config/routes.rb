Rails.application.routes.draw do

 devise_for :users
 root 'top#index'
 resources :contents, :except =>[:index]
 resources :users, only: [:show, :edit, :update]
end
