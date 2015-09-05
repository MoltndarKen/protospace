class PrototypesController < ApplicationController
  def new
    @prototype=Prototype.new
  end
  def create
    Prototype.create(create_params)
    redirect_to action: "new"
  end
  private
  def create_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :genre, :url, :tag1_list, :tag2_list, :tag3_list)
  end
end

