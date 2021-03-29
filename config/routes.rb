Rails.application.routes.draw do
  resources :carts, only: %i[show update]
  devise_for :users
  devise_for :admins
  root to: "home#index"

  authenticate :admin do 
    resources :products
    resources :categories
  end
end
