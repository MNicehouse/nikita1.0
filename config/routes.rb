Rails.application.routes.draw do
  devise_for :users, skip: [:registrations]
  root to: "pages#home"
  get '/workshops', to: 'workshops#index', as: :workshops
  get 'wertearbeit', to: "pages#wertearbeit", as: :wertearbeit
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/blogpost', to: 'blog_posts#index', as: 'blogpost_index'
  # Defines the root path route ("/")
  # root "articles#index"
  namespace :admin do
  root 'dashboard#index'
  end
  end
