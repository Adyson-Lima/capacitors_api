class Api::V1::CapacitorsController < ApplicationController

  before_action :set_capacitor, only: %i[show] # show update destroy

  def index
    @capacitors = Capacitor.all
    render json: @capacitors
  end

  def show
    render json: @capacitor
  end

private

def set_capacitor
  @capacitor = Capacitor.find(params[:id])
end

def capacitor_params
  params.require(:capacitor).permit(:description, :price)
end

end
