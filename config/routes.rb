Rails.application.routes.draw do

  root "home#about"
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"


  post "users/:id/update" =>"users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/:id" => "users#show"


  get 'posts/index'
  get 'posts/new' => 'posts#new'
  get 'posts/:id' => 'posts#show'
  post 'posts/create' => 'posts#create'
  post 'posts/:id/destroy' => 'posts#destroy'

  get "/" => "home#about"
  get "about" => "home#about"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
