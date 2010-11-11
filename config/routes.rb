Matchups::Application.routes.draw do
  resources :characters
  resources :feedbacks
  resources :matchups do
    resources :articles
  end
  
  root :to => "main#home"
end
