Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Front page is the quiz
  root to: 'pages#quiz'

  # Spin the wheel page
  get '/wheel', to: 'pages#wheel', as: :wheel

  # Pages for searching/filtering activities and for showing one activity
  resources :activities, only: %i[index show]

  # User signup with personality attached
  # Check devise docs

  # Share your results
  post '/', to: 'pages#share', as: :share

  # Personalities index
  resources :personalities, only: %i[index]
end
