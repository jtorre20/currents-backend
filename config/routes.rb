  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :sections, only: [:index]
        resources :stories, only: [:index]
        resources :comments, only: [:index]

      end
    end
  end
