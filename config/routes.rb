Rails.application.routes.draw do
  get '/', to: 'web/videos#index'

  scope module: :web do
    resources :videos
    resources :creators
  end
end
