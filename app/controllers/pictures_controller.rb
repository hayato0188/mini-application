class PicturesController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @pictures = Picture.all
  end

  def new
  end

  def create
    Picture.create(tweet_params)
  end

  private
  def tweet_params
    params.permit(:image, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
