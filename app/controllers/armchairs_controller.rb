class ArmchairsController < ApplicationController
  before_action :set_furnishing, only: [:show ]

  # GET /armchairs
  # GET /armchairs.json
  def index
    @armchairs = Furnishing.where("furnishing_type = 'armchair' and seats = 1").order("shape ASC")
    @primary_img = @armchairs.last.img
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
    params.require(:furnishing).permit(:name, :description, :dimensions_description, :img, :alter, :seats, :shape, :furnishing_type, :is_main)
  end

end