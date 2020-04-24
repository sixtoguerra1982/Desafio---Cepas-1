Rails.application.routes.draw do
  get 'enologonewspapers/index'
  resources :enologos
  resources :newspapers
  resources :wines
  resources :strains
  resources :strain_wines, only: [:index, :update, :destroy , :edit]
  resources :enologonewspapers, only: [:index , :create , :destroy]
  root to: 'wines#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
