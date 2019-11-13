class ImagesController < ApplicationController
  
  before_action :move_to_index, except: :index

  def index
    @images=Image.all
  end

  def new
  end

  def create
    Image.create(name: image_params[:name], image: image_params[:image], artist_name: image_params[:artist_name], url: image_params[:url],user_id: current_user.id)
  end

  private
  def image_params
    params.permit(:name, :image, :artist_name, :url)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
