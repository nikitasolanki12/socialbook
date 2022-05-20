Rails.application.routes.draw do
  
  # get 'comment/new'
  # get 'post/new'
 
  devise_for :users, controllers: {
           :sessions => "users/sessions",
           :registrations => "users/registrations",
           :omniauth_callbacks => "users/omniauth_callbacks"  }

      resources :profiles

      resources :posts  do

      resources :comments
      end
        
      resources :friends do

        member do
          post :addfriend
        end
       end   


       get 'friendship/index'
       get 'friends/index'

      post "/nikita", to: "posts#nikita"

      # post "/addfriend", to: "friends#index"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end


