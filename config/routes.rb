Rails.application.routes.draw do
  get 'report_proposals/index'

  get 'report_proposals/result'

  resources :properties
  resources :property_categories
  resources :proposal_categories
  root 'home#index'

  devise_for :users, path: '', path_names: {sign_in: "acessar", sign_up: "registro", sign_out: "sair"}
  resources :comments
  resources :proposals do
    post :vote, on: :member
  end
  resources :cities
  resources :states

  get 'report_properties_cities', to: 'report_properties_cities#index'
  get 'report_properties_cities_result', to: 'report_properties_cities#result'

  get 'report_proposals', to: 'report_proposals#index'
  get 'report_proposals_result', to: 'report_proposals#result'
end
