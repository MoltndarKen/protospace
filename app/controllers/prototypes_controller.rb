class PrototypesController < ApplicationController
  def new
    @prototype=Prototype.new
  end
  def create
    Prototype.create(create_params)
  end
  private
  def create_params
    params.require(:prototype).permit(:title,:introduction,:genre,:url,:tag_list)
  end
end

