Rails.application.routes.draw do
  get '/'=>'top#home'
  get 'map'=>'map#home'
end
