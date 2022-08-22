Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:new] do
    resources :reviews, only: [:create]
  end
  resources :reviews, only: [:index, :show]
  get "/restaurants/id/reviews", to: "restaurants#show"
end
