Rails.application.routes.draw do
  
  get 'contact' => 'pages#contact'
  get 'about' => 'pages#about'
  get 'accreditation' => 'pages#accreditation'
  post 'request'=>'requests#create'
  resources :admissions
  resources :facuilty
  resources :programs
  resources :news
  resources :almunis
  resources :staffs
  resource  :visitor_comments
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
