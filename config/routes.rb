StudioApp::Application.routes.draw do
  #resources :events
  namespace :admin do
    resources :events

    resources :projects do
      resources :tasks
    end
  end

  root :to => 'home#index'
end
