Rails.application.routes.draw do
  devise_for :users
  resources :visitors, :users, :guests
  root 'static_pages#new'
  

  # resourses :user  ///will access the crud file for users



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
