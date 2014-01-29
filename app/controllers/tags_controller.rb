class TagsController < ApplicationController

  # GET /tags/1
  # GET /tags/1.json
  def show
    tag = ActsAsTaggableOn::Tag.find(params[:id])
    @furnishings = Furnishing.tagged_with(tag.name).order("shape ASC")

    @primary_img = @furnishings.first.image_rollover
  end

end
