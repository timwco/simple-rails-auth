Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  ## User Management
  post "register", to: "users#new"
  post "login", to: "users#login"


  ## Dashboard
  get "dashboard", to: "dashboards#index"


end
