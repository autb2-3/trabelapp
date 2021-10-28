Rails.application.routes.draw do
  get 'reserves/index'

  resources :reserves
  get 'reserves/index'
  resources :rooms do
  collection do
    get 'search'
    end
   end
  devise_for :users
  root to: 'rooms#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
