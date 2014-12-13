Rails.application.routes.draw do
  root "home#index"

  get "about", to: "about#show"


  get "gifs/new", to: "gifs#new"

  post "gifs/new", to: "gifs#create"


end

