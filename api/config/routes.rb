Rails.application.routes.draw do
  resources :accounts
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :budgets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
