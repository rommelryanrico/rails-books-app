Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home', to: 'books#home', as: "home"
  get "/books", to: "books#index", as: "books"
  get "/books/new", to: "books#new", as: "new_book"
  post '/books', to: 'books#create'
  get "/books/:id", to: "books#show", as: "book"
  get "/books/:id/edit", to: "books#edit", as: "edit_book"
  patch '/books/:id', to: 'books#update'
  put '/books/:id', to: 'books#update'
  
  delete '/books/:id', to: "books#destroy", as: "delete_book"

  root to: 'books#home'
end
