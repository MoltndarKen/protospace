class Prototypes::RankingController < ApplicationController

  def index
    prototype_ids =Like.group(:target_prototype_id).order("count_target_prototype_id DESC").count(:target_prototype_id).keys
    @rankings = Prototype.where(id: prototype_ids).page(params[:page]).per(5)
  end
end

