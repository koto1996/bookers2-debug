Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "homes#top"
  get "home/about"=>"homes#about"
  devise_for :users
  resources :users, only: [:index,:show,:edit,:update] do 
    resource :relationships, only:[:create,:destroy]
    get 'followings' => 'relationships#followings',as: 'followings'
    get 'followers' => 'relationships#followers',as: 'followers'
    get "daily_posts"=> "users#daily_posts"
  end
  resources :books, only: [:index,:show,:edit,:create,:destroy,:update] do
    resource :favorites,only:[:create,:destroy]
  resources :post_comments,only:[:create,:destroy]
  end
  get '/search',to: 'searches#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :chats, only: [:show, :create]
  resources :groups do
    resource :group_users,only: [:create, :destroy]
   get "join" => "groups#join"
   get "new/mail" => "groups#new_mail"
   get "send/mail" => "groups#send_mail"
  end
end