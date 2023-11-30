# == Route Map
#
#        Prefix Verb   URI Pattern                   Controller#Action
#     bookmarks GET    /bookmarks(.:format)          bookmarks#index
#               POST   /bookmarks(.:format)          bookmarks#create
#  new_bookmark GET    /bookmarks/new(.:format)      bookmarks#new
# edit_bookmark GET    /bookmarks/:id/edit(.:format) bookmarks#edit
#      bookmark GET    /bookmarks/:id(.:format)      bookmarks#show
#               PATCH  /bookmarks/:id(.:format)      bookmarks#update
#               PUT    /bookmarks/:id(.:format)      bookmarks#update
#               DELETE /bookmarks/:id(.:format)      bookmarks#destroy
#  static_index GET    /static/index(.:format)       static#index

Rails.application.routes.draw do
  resources :bookmarks
  get 'static/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
