Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Front page shows the options
  root to: 'pages#home'

  # Quiz page
  get '/quiz', to: 'pages#quiz', as: :quiz

  # Spin the wheel page
  get '/wheel', to: 'pages#wheel', as: :wheel

  # Pages for searching/filtering activities and for showing one activity
  resources :activities, only: %i[index show]

  # User signup with personality attached
  # Check devise docs
  get '/results', to: 'pages#results', as: :results

  # Share your results
  post '/quiz', to: 'pages#share', as: :share

  # Personalities index
  resources :personalities, only: %i[index]
end
