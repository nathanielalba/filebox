Rails.application.routes.draw do
  devise_for :users
  resources :files
  root 'files#index'
end
