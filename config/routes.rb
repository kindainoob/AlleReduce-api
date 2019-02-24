Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'registration', to: 'registration#index'
  resources :restaurants do
    resources :menus
  end
  resources :users
end
