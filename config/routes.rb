Rails.application.routes.draw do

  root 'pages#home'

  resources :brands
  resources :events do
    resources :tickets
  end
  resources :venues

end
