Rails.application.routes.draw do

  root 'pages#home'

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :brands
  resources :events do
    resources :tickets
  end
  resources :venues

end
