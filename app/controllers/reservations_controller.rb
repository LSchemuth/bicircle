class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.where(user_id: current_user.id)
  end

  def show
    set_reservation
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reservation_path(@reservation)
    else
      render "new"
    end
  end


  def edit
    set_reservation
  end

  def update
    set_reservation
      if @reservation.update(reservation_params)
        redirect_to reservation_path(@reservation)
      else
        render "edit"
      end

  def destroy
    @reservation.destroy
    redirect_to bikes_path
  end

  end


   private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end
end

