Rails.application.routes.draw do
  root 'home#index'
  resources :bookmarks
  resources :kinds
  resources :categories

  get "/retrieve/:id", to: "home#retrieve", as: "home_retrieve"
end
