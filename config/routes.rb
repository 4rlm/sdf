Rails.application.routes.draw do
  resources :contacts
  resources :urlings
  resources :urls
  resources :phonings
  resources :phones
  resources :addressings
  resources :addresses
  resources :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
