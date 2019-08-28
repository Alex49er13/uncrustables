Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#new'
  resources :visitors
  
  resources :companies do
    resources :guests
  end
    resources :users 
    end

  # resourses :user  ///will access the crud file for users



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

