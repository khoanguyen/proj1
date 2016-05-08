Rails.application.routes.draw do
  root to: 'home#index'
  patch 'capture/:id', to: 'pokemon#capture', as: :capture
  devise_for :trainers
  resources :trainers
end
