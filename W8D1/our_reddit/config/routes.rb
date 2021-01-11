Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :subs, except: [:edit, :destroy]

  resources :posts, only: [:index, :show]

  resources :users do
    resources :subs, only: [:edit]

    resources :posts, only: [:edit, :create, :destroy]
  end

  resource :session, only: [:new, :create, :destroy]
end





