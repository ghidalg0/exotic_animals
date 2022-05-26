Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :animals, only: %i[index show new create] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[delete]
  get 'dashboard', to: "dashboard#display"
  patch 'accept_booking/:id', to: "bookings#accept_booking", as: :accept_booking
  patch 'reject_booking/:id', to: "bookings#reject_booking", as: :reject_booking
end
