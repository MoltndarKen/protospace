class Prototypes::LatestController < ApplicationController

  def index
    @prototypes = Prototype.order('created_at DESC').page(params[:page]).per(5)
  end
end

