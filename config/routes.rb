Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  #
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'profile', to: 'users#profile'
  # Front page shows the options
  root to: 'pages#home'

  # Quiz page
  get '/quiz', to: 'pages#quiz', as: :quiz

  # Spin the wheel page
  get '/wheel', to: 'pages#wheel', as: :wheel

  # Pages for searching/filtering activities and for showing one activity
  resources :activities, only: %i[index show] do
    member do
      post 'toggle_favorite', to: "activities#toggle_favorite"
      post 'toggle_type', to: "activities#toggle_type"
    end
  end




  # User signup with personality attached
  # Check devise docs

  # Share your results
  post '/quiz', to: 'pages#share', as: :share

  # Personalities index
  resources :personalities, only: %i[index]
end
