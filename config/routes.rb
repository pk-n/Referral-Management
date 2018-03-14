Rails.application.routes.draw do
  
  devise_for :users
  root to: 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]

  namespace :admin do
    resources :users, only: [:show, :index, :new, :create]
    resources :referral_codes, only: [:new, :create]
    resources :referrals, only: [:new, :create]
  end
end