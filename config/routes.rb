Rails.application.routes.draw do
  root to: 'site#home'
  get '/contact' => 'site#contact'
end
