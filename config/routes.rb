Rails.application.routes.draw do
  root 'dashboard#index'
  get '/dashboard' => 'dashboard#index'
  resources :suppliers do
    resources :items
  end
  resources :purchases
  devise_for :users
end
