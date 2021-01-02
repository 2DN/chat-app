Rails.application.routes.draw do
  devise_for :users
  root to: "messages#index"
  resources :users, omly:[:edit, :update]
  resources :rooms, only:[:new, :create]
end
