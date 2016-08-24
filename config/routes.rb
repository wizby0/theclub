Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  # root 'welcome#index'
  resources :posts
  resources :timetable
  
  root 'welcome#test_show'
  get '/test_posts' => 'welcome#index'
  get '/team_contact' => 'welcome#contact'
  get '/schedule' => 'time_slots#schedule'
  
  post 'manage_slots' => 'time_slots#manage_slots'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
