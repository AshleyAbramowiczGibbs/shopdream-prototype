class Api::NearbyController < ApplicationController
  def index
    response = HTTP.get("https://api.goodzer.com/products/v0.1/search_stores/?query=#{params[:item_tag]}&lat=41.85095702169946&lng=-87.62840924524124&radius=#{params[:distance]}&priceRange=30:120&apiKey=#{ENV['Goodzer_API_Key']}")
    render json: response.parse['stores']
  end
end