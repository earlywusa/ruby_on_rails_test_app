Rails.application.routes.draw do
  resources :myarticles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   Prefix Verb   URI Pattern                    Controller#Action
# myarticles GET    /myarticles(.:format)          myarticles#index
#          POST   /myarticles(.:format)          myarticles#create
# new_myarticle GET    /myarticles/new(.:format)      myarticles#new
# edit_myarticle GET    /myarticles/:id/edit(.:format) myarticles#edit
# myarticle GET    /myarticles/:id(.:format)      myarticles#show
#          PATCH  /myarticles/:id(.:format)      myarticles#update
#          PUT    /myarticles/:id(.:format)      myarticles#update
#          DELETE /myarticles/:id(.:format)      myarticles#destroy
#     root GET    /                              pages#home
#    about GET    /about(.:format)               pages#about
#   signup GET    /signup(.:format)              myusers#new
#  myusers GET    /myusers(.:format)             myusers#index
#          POST   /myusers(.:format)             myusers#create
# edit_myuser GET    /myusers/:id/edit(.:format)    myusers#edit
#   myuser GET    /myusers/:id(.:format)         myusers#show
#          PATCH  /myusers/:id(.:format)         myusers#update
#          PUT    /myusers/:id(.:format)         myusers#update
#          DELETE /myusers/:id(.:format)         myusers#destroy



root 'pages#home'
get 'about', to: 'pages#about'



get 'signup', to: 'myusers#new'
# post 'myusers', to: 'myusers#create'
# get 'users/:id/edit', to: 'myusers#edit', as: 'edit_user'
# patch 'users/:id/edit', to: 'myusers#update'
#
# patch 'users/:id', to: 'myusers#update', as: 'user'
# put 'users/:id', to: 'myusers#update'
# get 'users/:id', to: 'myusers#show'
resources :myusers, except: ['new']
end
