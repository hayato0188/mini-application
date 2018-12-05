class PicturesController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @pictures = Picture.all
  end

  def new
  end

  def create
    Picture.create(image: picture_params[:image], text: picture_params[:text], user_id: current_user.id)
  end

  private
  def picture_params
    params.permit(:image, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
