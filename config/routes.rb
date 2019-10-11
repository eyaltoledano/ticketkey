Rails.application.routes.draw do

  resources :brands
  resources :events do
    resources :tickets
  end
  resources :venues
  
end
