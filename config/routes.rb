Rails.application.routes.draw do
  # get 'cocktails', to: 'cocktails#index'
  # get 'cocktails/new', to: 'cocktails#new'
  # post 'cocktails', to: 'cocktails#create'
  # get 'cocktails/:id', to: 'cocktails#show'
  # get 'cocktails/:id/edit', to: 'cocktails#edit'
  # patch 'cocktails/:id', to: 'cocktails#update'
  # delete 'cocktails/:id', to: 'cocktails#destroy'
  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]
  end
end
