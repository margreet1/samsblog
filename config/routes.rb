Rails.application.routes.draw do
  devise_for :users
  # get "reviews" to: "reviews#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'reviews#index'

  get 'reviews/new', to: 'reviews#new'
    resources :reviews
end
