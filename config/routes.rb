Matchups::Application.routes.draw do
  devise_for :users

  match "/users", :to => "users#index"
  resources :characters
  resources :feedbacks
  resources :matchups do
    resources :articles
  end
  
  root :to => "characters#index"
end
