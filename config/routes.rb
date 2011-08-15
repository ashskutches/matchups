Matchups::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  match "/users", :to => "users#index"
  match "/tip/:id/like", :to => "tips#like", :as => "like"
  match "/characters", :to => "characters#index"
  match "/characters/:name", :to => "characters#show", :as => :character_show
  match "/characters/:player/vs:opponent", :to => "search#tips", :as => :tip_search
  match "/search", :to => "search#input", :as => :search

  resources :blogs
  resources :feedbacks
  resources :tips

  root :to => "blogs#index"
end
