Rails.application.routes.draw do
  namespace :admin do 
    root 'tags#index'
    resources :tags
  end
end
