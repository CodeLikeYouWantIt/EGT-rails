Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post   'login'   => 'sessions#create'
  post 'authenticate', to: 'authentication#authenticate'
  resources :users, only: [:index, :new, :create, :update, :destroy]
  resources :series, only: [:index, :new, :create, :update, :destroy]
  resources :posts, only: [:index, :new, :create, :show, :update, :destroy]
  resources :comments, only: [:index, :new, :create, :update, :destroy]
end
