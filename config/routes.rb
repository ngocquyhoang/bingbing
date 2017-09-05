Rails.application.routes.draw do

  get 'image' => 'image#index'
  root 'home#index'
  
end
