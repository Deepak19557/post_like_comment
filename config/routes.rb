Rails.application.routes.draw do
  get 'likes/index'
  get 'likes/new'
  get 'likes/show'
  get 'comments/index'
  get 'comments/new'
  get 'comments/show'
  get 'posts/index'
  get 'posts/new'
  get 'posts/show'
  root 'homes#index'
  post 'post_like', to: 'posts#like', as:"post_like"
  post 'post_like_delete', to: 'posts#like_delete', as:"post_like_delete"
  post 'comment_like_delete', to: 'comments#like_delete', as:"comment_like_delete"
  post 'comment_like', to: 'comments#like', as:"comment_like"


  # get 'like_count', to: 'likes#like_count'
  # post '/like_count/:id', to: 'likes#like_count'
  devise_for :users
  resources :posts
  resources :comments
  resources :likes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
