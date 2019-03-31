Rails.application.routes.draw do
  root   'static_pages#home'
  get    '/course_intro', to: 'static_pages#course_intro'
  get    '/teachers',     to: 'static_pages#teachers'
  get    '/students',     to: 'static_pages#students'
  get    '/faq',          to: 'static_pages#faq'
  get    '/contact',      to: 'static_pages#contact'
  get    '/signup',       to: 'users#new'
  get    '/login',        to: 'sessions#new'
  post   '/login',        to: 'sessions#create'
  delete '/logout',       to: 'sessions#destroy'

  # admin
  # account
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  # camp
  resources :works, only: [:show]
  resources :posts, only: [:show]
  resources :camps, only: [:show] do
    resources :courses, only: [:index, :show]
    resources :meetup_groups, only: [:index, :show, :new]
    resources :live_broadcasts, only: [:index]
    resources :competitions, only: [:index, :show]
    resources :conversations, only: [:index, :show]
  end
end
