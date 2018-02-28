Rails.application.routes.draw do
  devise_for :users
  # changed root to spaces index:
  root to: 'spaces#index'

  get 'spaces/search', to: 'spaces#search'
  resources :spaces do
    resources :bookings, only:[:new, :create, :delete, :show]
  end

  resources :bookings, only: [:index]
  # uncomment this on master:
end
