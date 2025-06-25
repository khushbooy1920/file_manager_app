Rails.application.routes.draw do
  resources :file_items
  resources :folders
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
  root to: 'home#index'

  resources :folders do
    member do
      get :files_list
    end
  end
end
