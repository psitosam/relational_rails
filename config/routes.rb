Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/podcasters', to: 'podcasters#index'
  post '/podcasters', to: 'podcasters#create'
  get '/podcasters/new', to: 'podcasters#new'
  get '/podcasters/:id/edit', to: 'podcasters#edit'
  get '/podcasters/:id', to: 'podcasters#show'
  patch '/podcasters/:id', to: 'podcasters#update'
  put '/podcasters/:id', to: 'podcasters#update'
  delete '/podcasters/:id', to: 'podcasters#destroy'
  get '/podcasters/:podcaster_id/podcasts', to: 'podcaster_podcasts#index'
  get '/podcasts', to: 'podcasts#index'
  get '/podcasts/:id', to: 'podcasts#show'
  #anything with a hard coded word following parents should come above show page route
end
