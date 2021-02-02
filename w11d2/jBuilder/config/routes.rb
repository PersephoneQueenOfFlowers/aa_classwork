Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :gifts, only: [ :show, :index ]
    resources :guests, only: [ :show, :index ]
    resources :parties, only: [ :show, :index ]
  end

  root to: "static_pages#root"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

