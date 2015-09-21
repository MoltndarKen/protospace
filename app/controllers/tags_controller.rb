class TagsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.most_used(100)
  end
  def show
    @tag = ActsAsTaggableOn::Tag.find_by(params[:id])
    proto_tags = ActsAsTaggableOn::Tagging.where(tag_id: params[:id])
    @prototypes = proto_tags.map{|proto_tag| Prototype.find(proto_tag.taggable_id)}
  end
end
