Rails.application.routes.draw do
  root to: 'restaurants#index'
  get 'reviews/new'
  get 'reviews/create'
  get 'restaurants/index'
  get 'restaurants/new'
  get 'restaurants/create'
  get 'restaurants/show'
  resources :restaurants, only: [:index, :new, :create, :show] do

    resources :reviews, only: [:new, :create]

  end
end
