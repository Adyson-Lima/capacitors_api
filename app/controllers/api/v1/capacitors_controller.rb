class Api::V1::CapacitorsController < ApplicationController

  #before_action :set_capacitor, only: %i[] # show update destroy

  def index
    @capacitors = Capacitor.all
    render json: @capacitors
  end

private

def set_capacitor
  @capacitor = Capacitor.find(params[:id])
end

def capacitor_params
  params.require(:capacitor).permit(:description, :price)
end

end
