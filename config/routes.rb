Rails.application.routes.draw do
  get '/', to: 'web/videos#index'

  scope module: :web do
    resources :videos, only: [:show]
    resources :series, only: [:show]
    resources :creators, only: [:show]
  end
end
