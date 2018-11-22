class Api::AsosProdutsController < ApplicationController
  def index
    response = HTTP.get("https://api.asos.com/product/search/v1/?q=#{params[:item_tag]}&store=1&lang=en-GB&sizeschema=US&currency=EUR&sort=freshness&channel=mobile-app&offset=0&limit=100")
    render json: response.parse["products"].map do |product| 
      return {
        name: product["name"],
        price: product["price"],
        images: product["images"]
      }
    end
  end
end
