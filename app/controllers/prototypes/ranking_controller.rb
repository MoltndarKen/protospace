class Prototypes::RankingController < ApplicationController

  def index
    @rankings = Prototype.all
    # @rankings=Prototype.all.limit()
  end
end
