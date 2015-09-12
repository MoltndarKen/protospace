class PrototypesController < ApplicationController
  def new
    @prototype=Prototype.new
    @prototype.captured_images.build
  end
  def show
    @prototype = Prototype.find(params[:id])
    @comment = Comment.new
  end
  def create
    current_user.prototypes.build(create_params).save
    redirect_to root_path
  end
  private
  def create_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :genre, :url,captured_images_attributes: [:image,:property]).merge(tag_list: params[:list][:tag])
  end
  def propetry_params
    params.require(:prototype).permit(captured_images_attributes: [:property])
  end
end
