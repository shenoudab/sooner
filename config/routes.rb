Sooner::Engine.routes.draw do
  resources :subscribers
  namespace :admin do
    resources :subscribers
    root :to => 'subscribers#index'
  end
  root :to => 'subscribers#new'
end