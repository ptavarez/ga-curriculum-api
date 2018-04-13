# frozen_string_literal: true

Rails.application.routes.draw do
  resources :week_twelve_repos
  resources :week_eleven_repos
  resources :week_ten_repos
  resources :week_nine_repos
  resources :week_eight_repos
  resources :week_seven_repos
  resources :week_six_repos
  resources :week_five_repos
  resources :week_four_repos
  resources :week_three_repos
  resources :week_two_repos
  resources :week_one_repos
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
