class ArmchairsController < ApplicationController
  before_action :set_furnishing, only: [:show ]

  # GET /armchairs
  # GET /armchairs.json
  def index
    @furnishings = Furnishing.where("furnishing_type = 'armchair'").order("shape ASC")
    @primary_img = @furnishings.first.image_rollover
    @testimonials = select_random(Testimonial)
  end

  # GET /armchairs/1
  # GET /armchairs/1.json
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
