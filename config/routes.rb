Rails.application.routes.draw do

  # This will generate all the route url helpers available in rails
  # for a specific resource
  resources :children
  resources :child_resets, only: [:update]

#     Prefix Verb   URI Pattern                  Controller#Action
#   children GET    /children(.:format)          children#index
#            POST   /children(.:format)          children#create
#  new_child GET    /children/new(.:format)      children#new
# edit_child GET    /children/:id/edit(.:format) children#edit
#      child GET    /children/:id(.:format)      children#show
#            PATCH  /children/:id(.:format)      children#update
#            PUT    /children/:id(.:format)      children#update
#            DELETE /children/:id(.:format)      children#destroy


# You can also scope and pick which actions you actually want

# resources :children, only: [:new]

#  new_child GET    /children/new(.:format)      children#new
end
