Rails.application.routes.draw do
  devise_scope :user do
    get "/login", to: "devise/sessions#new"
    post "/login", to: "devise/sessions#create"

    delete "/users/logout", to: "devise/sessions#destory"

    get "/register", to: "devise/registrations#new"
    post "/register", to: "devise/registrations#create"
  end

  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"
  
end
