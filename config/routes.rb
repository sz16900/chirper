Rails.application.routes.draw do
  devise_for :users
  resources :chirps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root "chirps#index"
end
