Rails.application.routes.draw do
  devise_for :users
  # changed root to spaces index:
  root to: 'spaces#index'

  resources :spaces do
    resources :bookings, only:[:index, :new, :create, :delete]
  end
  # uncomment this on master:
  # get "search", in: "spaces#search"
end
