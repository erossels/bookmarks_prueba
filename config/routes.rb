Rails.application.routes.draw do
  root 'home#index'
  resources :bookmarks
  resources :kinds
  resources :categories

  get "/:category_id", to: "index#retrieve"
end
