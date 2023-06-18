Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      devise_for :users,
                 controllers: {
                   sessions: 'api/v1/users/sessions',
                   registrations: 'api/v1/users/registrations'
                 }
      resources :cabs, only: [:index, :create, :show, :destroy]
      resources :reservations, only: [:index, :create, :destroy]
    end
  end
  # Defines the root path route ("/")
  root "home#index"
end
