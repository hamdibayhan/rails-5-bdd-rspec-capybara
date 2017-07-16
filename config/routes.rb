Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  devise_for :users
  root to: "articles#index"

  resources :articles do
    resources :comments
  end
end
