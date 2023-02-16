Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'welcome#home'

  get 'wechat', to: 'welcome#wechat'
  get 'search', to: 'welcome#search'
end
