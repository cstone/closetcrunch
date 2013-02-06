ClosetCrunch::Application.routes.draw do
  devise_for :users

  resources :pages, only: :show
  get '/:id' => 'pages#show'

  root to: 'pages#show', id: :home
end
