Rails.application.routes.draw do
  devise_for :users
  get '/', to: 'web/videos#index'

  scope module: :web do
    resources :videos, only: [:show] do 
      resources :comments, only:[:new, :create]
    end
    resources :series, only: [:show]
    resources :creators, only: [:show]
  end
end
