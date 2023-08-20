Rails.application.routes.draw do
  devise_for :users, skip: [:registrations]
  root to: "pages#home"
  get '/workshops', to: 'workshops#index', as: :workshops
  get 'wertearbeit', to: "pages#wertearbeit", as: :wertearbeit
  get 'kontakt', to: "pages#kontakt", as: :kontakt

  # Use resourceful routes for the BlogPost model
  resources :blog_posts, only: [:index, :show]

  namespace :admin do
    root 'dashboard#index'
    resources :blog_posts, only: [:index, :edit, :show, :update, :new, :create]
  end
end
