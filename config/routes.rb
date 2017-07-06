Rails.application.routes.draw do
  root 'dashboard#index'
  get '/dashboard' => 'dashboard#index'
  resources :suppliers do
    resources :items
  end
  devise_for :users
end
