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
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
end
