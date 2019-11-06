Rails.application.routes.draw do
  devise_for :users
  root 'images#index'
  get 'images' => 'images#index'
  get 'images/new' => 'images#new'
  post 'images' => 'images#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
