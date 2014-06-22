class SeatsController < ApplicationController

  def index
    @seat = Seat.new
    @seats = Seat.all
  end

  def create
    @seat = Seat.new(seat_params)
    if @seat.save

      redirect_to seats_path
    else
      render :index
    end
  end


  private
  def seat_params
    params.require(:seat).permit(:name, :location)
  end
end