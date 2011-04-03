Matchups::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  match "/users", :to => "users#index"
  match "/tip/:id/like", :to => "tips#like", :as => "like"
  match "/tips", :to => "tips#index"

  resources :characters
  resources :feedbacks
  resources :matchups do
    resources :tips
  end

  root :to => "characters#index"
end
