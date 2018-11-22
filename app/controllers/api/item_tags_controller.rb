class Api::ItemTagsController < ApplicationController
  before_action :authenticate_user

  def index
    @item_tags = current_user.item_tags
    render "index.json.jbuilder"
  end

  def create
    @item_tag = ItemTag.new(
      name: params["name"],
      style_id: params["style_id"],
      user_id: current_user.id
    )
    if @item_tag.save
      render json: {message: "This is your NEW item_tag"}
    else 
      render json: {errors: @item_tag.errors.full_messages}, status: 422
    end
  end

  def show
    @item_tag = ItemTag.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def destroy
    @item_tags = ItemTag.find_by(id: params[:id])
    @item_tags.destroy
    render json: {message: "Your item was deleted"}
  end
  
end
