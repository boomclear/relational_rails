Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/", to: "welcome#index"

  get "/schools", to: "schools#index"
  get "/schools/:id", to: "schools#show"
  get "/students", to: "students#index"
  get "/students/:id", to: "students#show"
  get "/schools/:id/students", to: "schools#child_index"
end
