Rails.application.routes.draw do
    get 'mypage', to: 'users#me'
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
  
    root 'boards#index'
    get 'login', to: 'users#me'
    resources :users, only: %i[new create]
    resources :boards
    resources :comments, only: %i[create destroy]
  end
  