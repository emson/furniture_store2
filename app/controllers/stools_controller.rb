class StoolsController < ApplicationController
  before_action :set_furnishing, only: [:show ]

  # GET /stools
  # GET /stools.json
  def index
    @furnishings = Furnishing.where("furnishing_type = 'stool'").order("shape ASC")
    @primary_img = @furnishings.first.image_rollover
    @testimonials = select_random(Testimonial)
  end

  # GET /stools/1
  # GET /stools/1.json
  def show
    @testimonials = select_random(Testimonial)
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_furnishing
    @furnishing = Furnishing.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def furnishing_params
    params.require(:furnishing).permit(Furnishing.permitted)
  end

end
