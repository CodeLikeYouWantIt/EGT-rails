Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post   'login'   => 'sessions#create'
  resources :users, only: [:new, :create, :update, :destroy]
end
