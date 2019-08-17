Rails.application.routes.draw do
  resources :visitors
  devise_for :users
  root 'static_pages#new'
  

  # resourses :user  ///will access the crud file for users



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
