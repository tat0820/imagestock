class ImagesController < ApplicationController
  
  # before_action :move_to_index, except: :index

  def index
    @images=Image.all
  end

  def new
  end

  def create
    Image.create(name: image_params[:name], image: image_params[:image], text: image_params[:text], user_id: current_user.id)
  end

  private
  def image_params
    params.permit(:name, :image, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
