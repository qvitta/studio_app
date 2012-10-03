StudioApp::Application.routes.draw do
  #resources :events
  namespace :admin do
    get 'projects' => 'projects#index'
    get 'tasks' => 'tasks#index'
    get 'events' => 'events#index'
  end

  root :to => 'home#index'
end
