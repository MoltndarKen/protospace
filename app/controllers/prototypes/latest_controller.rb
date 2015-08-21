class Prototypes::LatestController < ApplicationController

  def index
    # @latests=Prototype.order('created_at DESC').limit(10)
    @prototypes = Prototype.all
  end
end
