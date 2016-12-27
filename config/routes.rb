Rails.application.routes.draw do
  devise_for :users
  resources :bookings
  root to: 'pages#home'
end
