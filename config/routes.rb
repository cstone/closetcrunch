ClosetCrunch::Application.routes.draw do
  resources :users, except: :index
  resources :pages, only: :show

  get '/join' => 'users#new', as: :new_user_registration

  get '/:id' => 'pages#show'

  root to: 'pages#show', id: :home
end
