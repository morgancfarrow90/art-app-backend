Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :artists, only: [:index, :create]
      resources :artworks, only: [:index, :create]
    end
  end
end
