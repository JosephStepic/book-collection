Rails.application.routes.draw do
  resources :book3s
  resources :book2s
  resources :books
  resources :book_collections
  root 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
