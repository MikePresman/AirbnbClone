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

  scope :admin do
    get "/cities", to: "geography_listings#index", as: "all_cities"

    get "/city/:id", to: "geography_listings#show"
    get "/city/new", to: "geography_listings#new", as: "new_city"

    post "/city/new", to: "geography_listings#create"
    get "/cities/:id", to: "geography_listings#edit", as: "edit_city"
    put "/cities/:id", to: "geography_listings#update"
  end

  resources :admin


end
