Rails.application.routes.draw do

  resources :artists, only: [:show, :index] do 
    resources :songs, only: [:show, :index] 
  end 
  
  resources :songs, only: [:show, :index, :new, :create, :edit, :update]
  root 'songs#index'
end
