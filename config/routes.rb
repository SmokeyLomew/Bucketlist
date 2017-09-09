Rails.application.routes.draw do

  root 'destinations#index'
  resources :destinations, except: :index
  
end

# get '/people', to: 'people#index', as: 'all_the_people'



  
  

