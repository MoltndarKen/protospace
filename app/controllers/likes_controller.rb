class LikesController < ApplicationController

  def create
    @prototype = Prototype.find(params[:prototype_id])
    current_user.like(@prototype)
    @like_count = @prototype.likers.length
    render json: {like_count: @like_count}
  end
  def destroy
    @prototype = Prototype.find(params[:prototype_id])
    current_user.unlike(@prototype)
    @like_count = @prototype.likers.length
    render json:{like_count: @like_count}
  end
end

