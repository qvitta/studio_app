StudioApp::Application.routes.draw do
  #resources :events
  namespace :admin do
    resources :events
    resources :projects
  end

  root :to => 'home#index'
end
