Rails.application.routes.draw do
  root to: 'spaces#index'
  devise_for :users

  get 'spaces/search', to: 'spaces#search'
  resources :spaces do
    resources :bookings, only:[:new, :create, :delete, :show]
  end

  resources :bookings, only: [:index]
  # uncomment this on master:
end
