Rails.application.routes.draw do
  resources :wines
  resources :strains
  resources :strain_wines, only: [:index, :update, :destroy]
  root to: 'wines#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
