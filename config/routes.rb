Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'welcome/home', to: 'welcome#home'
get 'about/show', to: 'about#show'
end
