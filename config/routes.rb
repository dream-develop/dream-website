Rails.application.routes.draw do
  resources :meeting_entries
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :questions

  get 'questions/agreement' =>'questions#agreement'
  get 'meeting_entries/agreement' =>'meeting_entries#agreement'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
