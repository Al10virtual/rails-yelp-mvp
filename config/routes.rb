Rails.application.routes.draw do
  resources :restaurants, except: %i[update delete] do
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: [:destroy]
end
