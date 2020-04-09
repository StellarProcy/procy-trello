Rails.application.routes.draw do
  resources :dashboards, only: [:index, :create, :show]
  resources :columns, only: [:index, :create, :show, :destroy]
  resources :cards, only: [:index, :create, :show, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
