Matchups::Application.routes.draw do
  resources :characters
  resources :matchups do
    resources :articles
  end
  
  root :to => "main#home"
end
