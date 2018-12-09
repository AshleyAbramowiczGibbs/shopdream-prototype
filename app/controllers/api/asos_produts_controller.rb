class Api::AsosProdutsController < ApplicationController
  def index
    search_terms = URI.encode params[:item_tag]
    response = HTTP.get("https://api.asos.com/product/search/v1/?q=#{search_terms}&store=1&lang=en-GB&sizeschema=US&currency=EUR&sort=freshness&channel=mobile-app&offset=0&limit=100")
    render json: response.parse["products"].map do |product| 
      return {
        name: product["name"],
        price: product["price"],
        images: product["images"]
      }
    end
  end
end
