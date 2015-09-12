class Prototypes::LatestController < ApplicationController

  def index
    @prototypes = Prototype.order('created_at DESC').limit(12)
  end
end

