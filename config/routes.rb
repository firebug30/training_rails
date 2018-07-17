Rails.application.routes.draw do
  devise_for :users
  root to: 'web/videos#index'

  scope module: :web do
    get 'search', to: 'videos#search'
    resources :videos, only: [:show] do
        resources :comments, only:[:new, :create]
        resources :likes, only:[:create, :destroy]
    end
    resources :series, only: [:show]
    resources :creators, only: [:show]
    resources :users, only: [:show] do
      member do
        get 'comments'
        get 'likes'
      end
    end
  end
end
