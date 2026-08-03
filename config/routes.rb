Rails.application.routes.draw do
  root "home#index"
  get "articles/new"
post "articles", to: "articles#create"
get "articles/:id", to: "articles#show"
  
end