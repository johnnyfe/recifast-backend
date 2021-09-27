Rails.application.routes.draw do
  resources :cooking_lists
  resources :ingredients
  resources :comments
  resources :recipes
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
