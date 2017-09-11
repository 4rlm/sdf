Rails.application.routes.draw do
  resources :cont_namings
  resources :cont_names
  resources :cont_numings
  resources :cont_nums
  resources :addressings
  resources :addresses
  resources :urlings
  resources :urls
  resources :phonings
  resources :phones
  resources :act_namings
  resources :act_names
  resources :act_numings
  resources :act_nums
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
