Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# Notes
  #create
  get '/notes/new' => 'notes#new'
  get '/notes/create' => 'notes#create'
  
  #read
  post '/notes' => 'notes#index'
  get '/notes/:id' => 'notes#show'
  
  #show
  get '/notes/:id/edit' => 'notes#edit'
  patch '/notes/:id' => 'notes#update'
  
  #destroy
  delete '/notes/:id' => 'notes#destory'
  
  redirect_to '/notes' '/fancy_articles'
  redirect_to notes_url / notes_path
  
# Comment
  #create
  post '/comments' => 'comments#create'
  
  #destroy
  delete '/comments/:id' => 'comments#destroy'
  
end
