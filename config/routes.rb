Rails.application.routes.draw do

 root 'top#index'
 get '/' => 'top#index'
 resources :projects
 resources :contents, :except => [:index]

end
