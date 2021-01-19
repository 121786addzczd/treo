Rails.application.routes.draw do
  devise_for :users
  root 'top#index'

  resources :lists, only:[:new, :create, :edit, :update, :destroy] do
    resources :cards, expect: :index
  end
  resources :users, only: [:edit, :update]

end
