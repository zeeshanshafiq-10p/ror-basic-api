Rails.application.routes.draw do
  devise_for :users
  namespace :api, defaults: { format: :json } do
    scope module: :v1 do
      devise_for :users
      resources :articles, only: :show
      resources :users, path: 'owners' do
        resources :articles, only: :index
      end
    end
  end
end
