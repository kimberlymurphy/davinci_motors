DavinciMotors::Application.routes.draw do
  root to: 'cars#index'

  resources :cars do
    member do
      #get '/cars/:id/claim', to: 'cars#claim'
      get 'claim', as: 'claim'
    end

    #collection do
    #
    #end

  end

  get 'my_cars', to: 'cars#my_cars'

  resources :users, only: [:new, :create]

  get 'login',
      to: 'sessions#login',
      as: 'login'

  post 'login',
      to: 'sessions#create'

  delete 'logout',
      to: 'sessions#destroy'

  get 'auth/:provider/callback', to: 'sessions#oauth'
end
