Rails.application.routes.draw do
  
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  devise_for :users
  devise_scope :user do
    get '/users', to: 'devise/registrations#new'
  end
  
  root 'static_pages#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end