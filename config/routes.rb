Rails.application.routes.draw do

  devise_for :users
  root 'home#top'
  get 'home/about'
  resources :users,only: [:show,:index,:edit,:update] do
  	resource :relationships, only: [:create, :destroy]
  	get 'follows' => 'relationships#follows', as:'follows'
  	get 'followers' => 'relationships#followers', as:'followers'
  end
  resources :books do
  	resource :favorites, only: [:create, :destroy]
  	resources :book_comments, only: [:create, :destroy]
  end

  get 'search' => 'search#search'

end