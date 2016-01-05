Rails.application.routes.draw do

 root 'home#index'
 get '/' => 'home#index'
 resources :projects
 resources :contents, :except => [:index]

end
