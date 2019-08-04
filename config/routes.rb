Rails.application.routes.draw do

  get 'questions/approval' =>'questions#approval'
  get '/meeting_entries/approval' =>'meeting_entries#approval'


  resources :meeting_entries
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :questions

  # get '/show/:id' => 'quesions#show'

  get 'questions/complete' =>'questions#complete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
