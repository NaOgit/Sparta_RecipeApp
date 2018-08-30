Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :recipes
  root to: 'recipes#index'
  get 'recipes/index'
  # get 'recipes/show'
  # get 'recipes/create'
  # get 'recipes/new'
  # get 'recipes/edit'
  # get 'recipes/update'
  # get 'recipes/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
