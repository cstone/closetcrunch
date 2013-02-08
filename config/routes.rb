ClosetCrunch::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :sessions, only: [:new, :create, :destroy]
  resources :pages, only: :show
  resources :users, except: :index do
    member do
      get :activate
    end
  end

  get '/join' => 'users#new', as: :new_user_registration
  get '/login' => 'sessions#new', as: :new_user_session
  post '/login' => 'sessions#create', as: :create_user_session
  delete '/logout' => 'sessions#destroy', as: :destroy_user_session

  get '/:id' => 'pages#show'

  root to: 'pages#show', id: :home
end
