class Prototypes::CommentsController < ApplicationController

  def create
    Comment.build(create_params).save
    redirect_to prototype_path
  end
  private
  def create_params
  end
end

