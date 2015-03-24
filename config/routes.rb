Rails.application.routes.draw do
  devise_for :users

  resources :attachments do
  	collection do
  		get "search"
      get "download"
  	end
  end

  root 'attachments#index'
end
