Matchups::Application.routes.draw do
  devise_for :users

  resources :characters
  resources :feedbacks
  resources :matchups do
    resources :articles
  end
  
  root :to => "characters#index"
end
