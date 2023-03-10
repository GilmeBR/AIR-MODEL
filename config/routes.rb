Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "pages#home"
  get "my_bookings", to: "pages#my_bookings"
  get "my_flats", to: "pages#my_flats"

  resources :flats, except: :index do
    resources :bookings, only: [:new, :create]
    resources :comments, only: [:new, :create]
  end
  resources :bookings, only: [:show, :destroy, :edit, :update]
end
