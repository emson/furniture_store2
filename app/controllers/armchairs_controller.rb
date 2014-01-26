class ArmchairsController < ApplicationController
  before_action :set_furnishing, only: [:show ]

  # GET /armchairs
  # GET /armchairs.json
  def index
    @armchairs = Furnishing.where("furnishing_type = 'armchair'").order("shape ASC")
    @primary_img = @armchairs.first.image_rollover
  end

  # GET /armchairs/1
  # GET /armchairs/1.json
  def show
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_furnishing
    @armchair = Furnishing.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def furnishing_params
    params.require(:furnishing).permit(Furnishing.permitted)
  end

end
