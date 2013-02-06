ClosetCrunch::Application.routes.draw do
  devise_for :users
  as :user do
    get 'signup' => 'devise/registrations#new', as: :new_user_registration
    post 'signup' => 'devise/registrations#create', as: :user_registration
    get 'login' => 'devise/sessions#new', as: :new_user_session
    post 'login' => 'devise/sessions#create', as: :user_session
    delete 'logout' => 'devise/sessions#destroy', as: :destroy_user_session
  end

  resources :pages, only: :show
  get '/:id' => 'pages#show'

  root to: 'pages#show', id: :home
end
