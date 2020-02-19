Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/:id/reviews/new', to: 'reviews#new', as: 'new_restaurant_review'
  post 'restaurants/:id/reviews', to: 'reviews#create', as: 'restaurant_reviews'
  get 'restaurants/new', to: 'restaurants#new', as: 'new'
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
end
