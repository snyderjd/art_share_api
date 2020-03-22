Rails.application.routes.draw do
  # For details onz the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/users', to: 'users#index'
  # post '/users', to: 'users#create'
  # get '/users/new', to: 'users#new'
  # get '/users/:id/edit', to: 'users#edit'
  # get '/users/:id' to: 'users#show'
  # patch '/users/:id', to: 'users#update'
  # put '/users/:id', to: 'users#update'
  # delete '/users/:id', to: 'users#destroy'

  resources :users
  resources :artworks, only: [:create, :destroy, :show, :update] 
  resources :artwork_shares, only: [:create, :destroy]

  resources :users do
    # provides a route to get all the artworks for a given user
    resources :artworks, only: :index
  end

end
