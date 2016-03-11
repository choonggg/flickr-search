Rails.application.routes.draw do
  resources :search, only: [:index, :show]

  root 'search#home'
end
