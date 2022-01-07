Rails.application.routes.draw do
  root "home#index"

  devise_scope :user do
    get "/login", to: "devise/sessions#new"
    post "/login", to: "devise/sessions#create"

    delete "/users/logout", to: "devise/sessions#destory"

    get "/register", to: "devise/registrations#new"
    post "/register", to: "devise/registrations#create"
  end

  devise_for :users

  resources :cities

  scope :admin do
    get "/cities", to: "cities#index", as: "all_cities"
    get "/cities/new", to: "cities#new"
    post "/cities", to: "cities#create"

    get "/cities/:id", to: "cities#show"
    get "/cities/:id/edit", to: "cities#edit"
    put "/cities/:id", to: "cities#update"
  end

  resources :admin


end
