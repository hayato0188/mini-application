class UsersController < ApplicationController
  def show
    @pictures = current.user.picture.order("created_at DESC")
  end
end
