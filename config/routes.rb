Rails.application.routes.draw do
  # get "reviews" to: "reviews#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'reviews#index'

  resources :reviews, only: [:index, :show]

  namespace :admin do
    resources :reviews
  end
end
