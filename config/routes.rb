Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/bikes/my_bikes', to: 'bikes#my_bikes'
  resources :bikes do
    resources :reservations, only: [ :index, :new, :create ]
  end
  resources :reservations, only: [ :show, :edit, :update, :destroy ] do
    collection do
      get :my_reservations
    end
  end

end
