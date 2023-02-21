Rails.application.routes.draw do

  resources :authors  do 
      resources :books 
  end


#get "/books/:book_id/publishes", to: " publishes#index"
# get "/books/:book_id/publishes/:id" , to:"publishes#show"
# post "/books/:book_id/publishes",to:"publishes#create"
# put "/books/:book_id/publishes/:id" , to:"publishes#update"
# delete "/books/:book_id/publishes/:id", to:"publishes#destroy"

resources :books do
  resources :publishes
end

end
