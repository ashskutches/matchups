Matchups::Application.routes.draw do
  devise_for :users

  match "/users", :to => "users#index"
  match "/article/:id/like", :to => "articles#like", :as => "like"
  
  resources :characters
  resources :feedbacks
  resources :matchups do
    resources :articles
  end
  
  root :to => "characters#index"
end
