ClosetCrunch::Application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, except: :index
  resources :pages, only: :show

  get '/join' => 'users#new', as: :new_user_registration
  get '/login' => 'sessions#new', as: :new_user_session
  post '/login' => 'sessions#create', as: :create_user_session
  delete '/logout' => 'sessions#destroy', as: :destroy_user_session

  get '/:id' => 'pages#show'

  root to: 'pages#show', id: :home
end
