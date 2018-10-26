Rails.application.routes.draw do
  root to: "owners#index"

  resources :snacks, only: [:show]

  resources :owners do
    resources :machines, only: [:index]
  end

  resources :machines, only: [:show]
end
