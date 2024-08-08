Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # ++++++++++++++++++ RESTAURANT +++++++++++++++++++++++++++

  # read all ================================================
  get "restaurants", to: "restaurants#index", as: :restaurants
  # create ==================================================
  get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  post "restaurants", to: "restaurants#create"
  # read one ================================================
  get "restaurants/:id", to: "restaurants#show", as: :restaurant

  # ++++++++++++++++++++ REVIEW +++++++++++++++++++++++++++++

  # create ==================================================
  get "reviews/new", to: "reviews#new", as: :new_review
  post "reviews", to: "reviews#create"
end
