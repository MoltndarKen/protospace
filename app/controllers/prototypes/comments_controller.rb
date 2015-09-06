class Prototypes::CommentsController < ApplicationController

  def new
  end
  def create
    prototype = Prototype.find(params[:id])
    prototype.comments.build(create_params).save
    redirect_to prototype_path
  end
  private
  def create_params
    params.require(:comment).permit(:text)
  end
end

