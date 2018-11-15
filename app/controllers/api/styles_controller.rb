class Api::StylesController < ApplicationController
  before_action :authenticate_user

  def index
    @styles = current_user.styles
    render "index.json.jbuilder"
  end

  def create
    @style = Style.new(
      image_url: params["image_url"],
      user_id: current_user.id
    )
    if @style.save
      render "show.json.jbuilder"
    else 
      render json: {errors: @style.errors.full_messages}, status: 422
    end
  end

  def show
    @style = Style.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def destroy
    @styles = Style.find_by(id: params[:id])
    @styles.destroy
    render json: {message: "Your item was deleted"}
  end
end
