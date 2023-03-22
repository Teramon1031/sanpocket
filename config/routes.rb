Rails.application.routes.draw do
  get '/' => 'top#home'
  get 'map' => 'map#home'
  post 'map/new' => 'map#new'
  get 'user' => 'user#home' 
  post 'user/editName' => 'user#editName'
  post 'user/editPW' => 'user#editPW'
  get 'login' => 'user#login' 
  post 'loginnow' => 'user#loginnow' 
  get 'signup' => 'user#signup' 
  post 'signupnow' => 'user#signupnow' 
  post 'logout' => 'user#logout' 
end
