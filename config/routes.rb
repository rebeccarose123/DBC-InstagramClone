Rails.application.routes.draw do
  root 'photos#index'
  resources :photos, only: [:index]

  resources :users, only: [:show, :edit, :update] do
    resources :photos
  end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
