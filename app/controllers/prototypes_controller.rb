class PrototypesController < ApplicationController
  def new
    @prototype=Prototype.new
    3.times { @prototype.captured_images.build }
  end
  def create
    current_user.prototypes.build(create_params).save
    redirect_to action: "new"
  end
  private
  def create_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :genre, :url,captured_images_attributes: [:image]).merge(tag_list: params[:list][:tag])
  end
end

