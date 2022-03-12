Rails.application.routes.draw do
  devise_scope :user do
    post "/login", to: "devise/sessions#create"
    delete "/users/logout", to: "devise/sessions#destory"
    post "/register", to: "devise/registrations#create"
  end
  
  devise_for :users

  root "home#index"

  post "/home/value", to:"home#value"
  
  resources :cities
  
  namespace :admin do
    resources :cities
  end

  resources :admin
end
