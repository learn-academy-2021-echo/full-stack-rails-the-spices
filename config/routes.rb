Rails.application.routes.draw do
  root 'flavor#index'
  get '/flavors' => 'flavor#index', as: 'flavors'
  get '/flavors/new' => 'flavor#new', as: 'new_flavor'
  get '/flavors/:id' => 'flavor#show', as: 'flavor'
 post '/flavors' => 'flavor#create'
end
