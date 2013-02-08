ClosetCrunch::Application.routes.draw do
  resources :users, except: :index

  resources :pages, only: :show
  get '/:id' => 'pages#show'

  root to: 'pages#show', id: :home
end
