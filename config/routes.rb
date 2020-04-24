Rails.application.routes.draw do
  resources :enologos
  resources :newspapers
  resources :wines
  resources :strains
  resources :strain_wines, only: [:index, :update, :destroy , :edit]
  resources :enologonewspapers, only: [:create , :destroy]
  resources :notes, only: [:create]
  root to: 'wines#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
