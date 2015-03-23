Rails.application.routes.draw do
  devise_for :users

  resources :files do
  	collection do
  		get "search"
  	end
  end

  root 'files#index'
end
