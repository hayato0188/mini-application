class UsersController < ApplicationController
  def show
    @pictures = current_user.pictures.order("created_at DESC")
  end
end
