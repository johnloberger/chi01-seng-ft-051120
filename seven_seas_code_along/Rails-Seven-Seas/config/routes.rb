Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #METHOD url, to: "controller#method"
  get "/", to: "application#welcome"
  resources :seas
end
