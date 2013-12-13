class ChairsController < ApplicationController
  before_action :set_furnishing, only: [:show ]

  # GET /chairs
  # GET /chairs.json
  def index
    @chairs = Furnishing.where(furnishing_type:'chair')
  end

  # GET /chairs/1
  # GET /chairs/1.json
  def show
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_furnishing
    @chair = Furnishing.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def furnishing_params
    params.require(:furnishing).permit(:name, :description, :dimensions_description, :img, :alter, :seats, :shape, :furnishing_type, :is_main)
  end

end
