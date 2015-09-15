class Prototypes::RankingController < ApplicationController

  def index
    prototype_ids =Like.group(:target_prototype_id).order("count_target_prototype_id DESC").limit(4).count(:target_prototype_id).keys
    @rankings = prototype_ids.map{|id| Prototype.find(id)}
  end
end

