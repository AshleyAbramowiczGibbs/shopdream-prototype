Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create" 
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

    get "/styles" => "styles#index"
    post "/styles" => "styles#create" 
    get "/styles/:id" => "styles#show"
    delete "/styles/:id" => "styles#destroy"

    get "/potential_purchases" => "potential_purchases#index"
    post "/potential_purchases" => "potential_purchases#create" 
    get "/potential_purchases/:id" => "potential_purchases#show"
    patch "/potential_purchases/:id" => "potential_purchases#update"
    delete "/potential_purchases/:id" => "potential_purchases#destroy"

    get "/item_tags" => "item_tags#index"
    post "/item_tags" => "item_tags#create" 
    get "/item_tags/:id" => "item_tags#show"
    patch "/item_tags/:id" => "item_tags#update"
    delete "/item_tags/:id" => "item_tags#destroy"

    get "/asos_products" => "asos_produts#index"
  end
end