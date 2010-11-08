Matchups::Application.routes.draw do
  resources :characters
  resources :matchups
  
  root :to => "main#home"
end
