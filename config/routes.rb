Ritly::Application.routes.draw do
 resources :users, :sessions
  root to: 'ritly#index'

  get '/signup' => 'users#new'

  delete '/signout', to: 'sessions#destroy'

  get '/signin' => 'sessions#new'

  get '/new', to: 'ritly#new'

  get '/go/:random', to: 'ritly#go'

  get '/go/:random/preview', to: 'ritly#go_preview'

  get '/ritly/show', to: 'ritly#show'

  get '/ritly/:random', to: 'ritly#show', as: :show

  get '/edit', to: 'ritly#random', as: :random

  get 'ritly/:id/edit', to: 'ritly#edit'

  post '/ritly', to: 'ritly#create'

  post '/ritly/:id/edit', to: 'ritly#update'

  delete '/ritly/:id/delete', to: 'ritly#delete'

end
