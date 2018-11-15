Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create" 
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/styles" => "styles#index"
    post "/styles" => "styles#create" 
    get "/styles/:id" => "styles#show"
    delete "/styles/:id" => "styles#destroy"

    get "/potentialpurchases" => "potentialpurchases#index"
    post "/potentialpurchases" => "potentialpurchases#create" 
    get "/potentialpurchases/:id" => "potentialpurchases#show"
    patch "/potentialpurchases/:id" => "potentialpurchases#update"
    delete "/potentialpurchases/:id" => "potentialpurchases#destroy"

    get "/itemtags" => "itemtags#index"
    post "/itemtags" => "itemtags#create" 
    get "/itemtags/:id" => "itemtags#show"
    patch "/itemtags/:id" => "itemtags#update"
    delete "/itemtags/:id" => "itemtags#destroy"
  end
end