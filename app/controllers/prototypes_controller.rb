class PrototypesController < ApplicationController
  def new
    @prototype = Prototype.new
  end
  def create
    Prototype.create(create_params)
    redirect_to action: "new"
  end
  def show
    @prototype = Prototype.find(params[:id])
  end
  private
  def create_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :genre, :url,).merge(tag_list: params[:list][:tag])
  end
end

