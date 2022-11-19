class PostimagesController < ApplicationController
  def new
    @postimage = Postimage.new
  end

  def index
  end

  def show
  end
  
  def create
    @postimage = Postimage.new(postimage_params)
    @postimage.user_id = current_user.id
    @postimage.save
    redirect_to postimages_path
  end
  
  
  private

  def postimage_params
    params.require(:postimage).permit(:shop_name, :image, :caption)
  end
  
end
