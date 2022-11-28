Rails.application.routes.draw do
  # to be operated on only in Item Controller
  resources :items, only: [:index] 
  # to be operated on only in User Controller
  resources :users, only: [:show] do
    # index methods for Items, to be operated on in User Controller
    resources :items, only: [:index, :show, :create]
  end
end
