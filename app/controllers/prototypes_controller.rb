class PrototypesController < ApplicationController
  def new
    @prototype=Prototype.new
    3.times{@prototype.captured_images.build}
  end
  def create
    @prototype = current_user.prototypes.build(create_params)
    @prototype.captured_images.each.with_index(1) do |image,i|
      i == 1 ? image.property = "main" : image.property = "sub"
    end
    @prototype.save
    redirect_to root_path
  end
  private
  def create_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :genre, :url,captured_images_attributes: [:image]).merge(tag_list: params[:list][:tag])
  end
end

