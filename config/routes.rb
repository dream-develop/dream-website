Rails.application.routes.draw do

  get 'questions/agreement' =>'questions#agreement'
  get '/meeting_entries/agreement' =>'meeting_entries#agreement'
  get 'questions/complete' =>'questions#complete'

  resources :meeting_entries
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :questions

  # get '/show/:id' => 'quesions#show'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
