class PicturesController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @pictures = Picture.includes(:user).order("created_at DESC")
  end

  def new
  end

  def create
    Picture.create(image: picture_params[:image], text: picture_params[:text], user_id: current_user.id)
  end

  def destroy
    picture = Picture.find(params[:id])
    picture.destroy if picture.user_id == current_user.id
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    picture = Picture.find(params[:id])
    if picture.user_id == current_user.id
      picture.update(picture_params)
    end
  end

  private
  def picture_params
    params.permit(:image, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
