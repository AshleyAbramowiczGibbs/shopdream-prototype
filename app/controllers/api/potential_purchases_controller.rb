class Api::PotentialPurchasesController < ApplicationController
  before_action :authenticate_user
  
  def index
    @potential_purchases = current_user.potential_purchases
    render "index.json.jbuilder"
    # render json: {message: "Here are ALL your potential purchases"}
  end

  def create
    @potential_purchase = PotentialPurchase.new(
      image_url: params["image_url"],
      item_tag_id: params["item_tag_id"],
      user_id: current_user.id
    )
    if @potential_purchase.save
      render json: {message: "Your POTENTIAL PURCHASE was created"}
      # render "show.json.jbuilder"
    else 
      render json: {errors: @potential_purchase.errors.full_messages}, status: 422
    end
  end

  def show
    @potential_purchase = PotentialPurchase.find_by(id: params[:id])
    render "show.json.jbuilder"
    # render json: {message: "This is a potential purchase"}
  end

  def destroy
    @potential_purchases = PotentialPurchase.find_by(id: params[:id])
    @potential_purchases.destroy
    render json: {message: "Your POTENTIAL PURCHASE was deleted"}
  end
end
