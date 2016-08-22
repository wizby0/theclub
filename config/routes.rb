Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root 'welcome#index'
  resources :posts
  # root 'welcome#test_index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
