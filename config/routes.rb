Rails.application.routes.draw do
  root to: 'site#home'
  get '/projects' => 'projects#index'
  get '/contact' => 'site#contact'
end
