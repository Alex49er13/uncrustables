Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#new'
  resources :visitors
  
  resources :companies do
    resources :guests
  end
    resources :users 
  
    
    get "visitor/still_in_building" => "visitors#still_in_building"  
    
  end
  # resourses :user  ///will access the crud file for users



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

