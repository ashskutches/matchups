Matchups::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  match "/users", :to => "users#index"
  match "/tip/:id/like", :to => "tips#like", :as => "like"
  match "/characters", :to => "characters#index"
  match "/characters/:name", :to => "characters#show", :as => :character_show

  resources :blogs
  resources :feedbacks
  resources :tips

  root :to => "blogs#index"
end
