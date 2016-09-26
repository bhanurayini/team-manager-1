Rails.application.routes.draw do
  root 'home#index'
  resources :fees
  resources :payment_types
  resources :stat_records
  resources :player_stats
  resources :events
  resources :team_has_coaches
  resources :coaches
  resources :managers
  resources :staffs
  resources :children
  resources :parents
  resources :phones
  resources :addresses
  resources :people
  resources :teams
  resources :organizations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
