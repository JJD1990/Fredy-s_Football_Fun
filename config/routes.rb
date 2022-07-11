Rails.application.routes.draw do
  devise_for :admins
  resources :posts
=begin
This is where the routes for my application are stored, devise allows authentication, 
resources are the posts/scores that are being created and the root is the homepage. 
=end 
  root to: "public#homepage"
end
