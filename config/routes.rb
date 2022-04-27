Rails.application.routes.draw do
  get 'comment/new'
  get 'post/new'
 
  devise_for :users, controllers: {
           :sessions => "users/sessions",
           :registrations => "users/registrations" }
 

        resources :profiles

        resources :posts


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
