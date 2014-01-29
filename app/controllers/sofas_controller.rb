class SofasController < ApplicationController
  before_action :set_furnishing, only: [:show ]

  # GET /sofas
  # GET /sofas.json
  def index
    @furnishings = Furnishing.where("furnishing_type = 'sofa'").order("shape ASC")
    @primary_img = @furnishings.first.image_rollover
  end

  # GET /sofas/1
  # GET /sofas/1.json
  def show
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
