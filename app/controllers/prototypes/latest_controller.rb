class Prototypes::LatestController < ApplicationController

  def index
    @prototypes = Prototype.all
  end
end

