class PrototypesController < ApplicationController
  def new
    @prototype=Prototype.new
  end
  def create
    binding.pry
    Prototype.create(create_params)
    redirect_to action: "new"
  end
  private
  def create_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :genre,:url,:web_design_list,:user_interface_list,:application_about_list)
  end
end

