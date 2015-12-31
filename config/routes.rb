Rails.application.routes.draw do
  root to: 'site#home'
  get '/projects' => 'projects#index'
  get 'projects/:id' => 'projects#show'  
  get '/contact' => 'site#contact'
  get 'projects/new' => 'projects#new'
  post 'projects' => 'projects#create'
  get 'projects/:id/edit' => 'projects#edit'
  delete 'projects/:id' => 'projects#destroy'

  get 'projects/:project_id/entries' => 'entries#index'
end
