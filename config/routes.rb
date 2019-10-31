Rails.application.routes.draw do
  root 'homepage#index'

  get '/search', to: 'search#index'  
  get '/stocks', to: 'stocks#index'

  resources :stocks, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
