Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/about', path: :about

  root 'welcome#index' 
  resources :feeds
end
