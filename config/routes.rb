Rails.application.routes.draw do
  namespace :users do
    resources :articles
  
  end
  namespace :users do
    get 'dash_boards/index'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions' 
    
  } 
  
  devise_scope :user do
    root to: "users/sessions#new"
    get "signup", :to => "users/registrations#new"
    get "logout", :to => "users/sessions#destroy"
    get "users/dash_boards", :to => "users/dash_boards#index"
  end

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  
  
end
