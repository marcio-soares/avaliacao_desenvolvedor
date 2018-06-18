Rails.application.routes.draw do

  resources :orders, only: %i[index]
  resources :home, only: %i[index] do
    post :upload, on: :collection
  end

  root 'home#index'
end
