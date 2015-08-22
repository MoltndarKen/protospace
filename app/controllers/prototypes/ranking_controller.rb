class Prototypes::RankingController < ApplicationController

  def index
    @rankings = Prototype.all
  end
end
