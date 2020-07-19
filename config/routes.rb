Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'welcome/leaderboards'

  get 'quiz/sports'
  get 'quiz/music'
  get 'quiz/entertainment'
  get 'quiz/science'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :questions

  root 'welcome#index'
end
