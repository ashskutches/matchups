Matchups::Application.routes.draw do
  resources :characters
  
  root :to => "main#home"
end
