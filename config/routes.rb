Rails.application.routes.draw do

  get 'welcome/home'
 
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end
