Rails.application.routes.draw do
  root to: 'gossips#index', as: :home
  devise_for :moussaillons
  resources :gossips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
