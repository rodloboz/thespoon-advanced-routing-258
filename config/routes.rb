Rails.application.routes.draw do
  # Rails Routing Convention
  # VERB PATH, TO: CONTROLLER#ACTION
  # if PATH is 'controller/action' => the to: option is not needed

  # GET /restaurants/top
  # get 'restaurants/top', as: :top_restaurants

  # GET /restaurants/42/chef
  # get 'restaurants/:id/chef', to: 'restaurants#chef'

  # GET /restaurants/42/reviews/new
  # get 'restaurants/:id/reviews/new', to: 'reviews#new'
  namespace :admin do
    resources :restaurants, only: :index
  end

  resources :restaurants do
    # 'restaurants/'
    resources :reviews, only: [:new, :create]

    # applies to multiple records
    # it doesn't give you /:id/
    collection do
      get 'top'
    end

    # applies to a specific record
    # it generates /:id/
    member do
      get 'chef'
    end
  end

  root to: 'restaurants#index'
end
