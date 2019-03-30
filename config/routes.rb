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
  get    '/dashboard',    to: 'camps#show'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :conversations, only: [:index, :show]
  resources :competitions, only: [:index, :show]
  resources :works, only: [:show]
  resources :live_broadcasts, only: [:index]
  resources :meetup_groups, only: [:index, :show, :new]
  resources :courses, only: [:index, :show]
  resources :posts, only: [:show]
end
