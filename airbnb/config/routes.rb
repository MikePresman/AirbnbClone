Rails.application.routes.draw do
  devise_scope :user do
    post "/login", to: "devise/sessions#create"
    delete "/users/logout", to: "devise/sessions#destory"
    post "/register", to: "devise/registrations#create"
  end
  
  devise_for :users

  root "home#index"

  get "/stream_a", to: "home#test_stream"
  
  resources :cities
  
  namespace :admin do
    resources :cities
  end

  resources :admin
end
